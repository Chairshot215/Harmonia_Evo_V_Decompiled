.class public Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SearchableItemPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsNewSource:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 52
    const v1, 0x7f100028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->mIsNewSource:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020010

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    return-void
.end method

.method public setIsNewSource(Z)V
    .locals 0
    .parameter "isNewSource"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->mIsNewSource:Z

    .line 47
    return-void
.end method
