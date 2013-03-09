.class public Lcom/android/settings/framework/preference/HtcIconPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcIconPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x7f010012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/HtcIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mContext:Landroid/content/Context;

    .line 60
    sget-object v1, Lcom/android/settings/R$styleable;->HtcIconPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mShowIcon:Z

    .line 65
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 72
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIconView:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcIconPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcIconPreference;->setIntent(Landroid/content/Intent;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    return-void
.end method

.method public showIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mShowIcon:Z

    if-eq v0, p1, :cond_0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mShowIcon:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mShowIcon:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcIconPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
