.class public Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HeaderPreference.java"


# instance fields
.field private mColor:I

.field private mDivider:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mColor:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mDivider:I

    .line 37
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->setLayoutResource(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 45
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 47
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, title:Landroid/widget/TextView;
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .end local v1           #title:Landroid/widget/TextView;
    :cond_0
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mDivider:I

    if-eqz v2, :cond_1

    .line 52
    const v2, 0x7f0d0001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .local v0, divider:Landroid/widget/ImageView;
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mDivider:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .end local v0           #divider:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mColor:I

    .line 60
    return-void
.end method

.method public setTitleDivider(I)V
    .locals 0
    .parameter "divider"

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/HeaderPreference;->mDivider:I

    .line 65
    return-void
.end method
