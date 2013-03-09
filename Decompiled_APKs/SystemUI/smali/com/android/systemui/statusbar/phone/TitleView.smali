.class public Lcom/android/systemui/statusbar/phone/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleView"


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mButtonId:I

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TitleView;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TitleView;->updateResources()V

    return-void
.end method

.method public setButtonImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateName(ZIZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitleId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateResources()V
    .locals 8

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v5, "usage_monitor_titlebar_rest"

    const v6, 0x7f02024a

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/TitleView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "usage_monitor_titlebar_left_rest"

    const v7, 0x7f020249

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitleId:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mTitleId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "usage_monitor_titlebar_btn"

    const v7, 0x7f020246

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TitleView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void
.end method
