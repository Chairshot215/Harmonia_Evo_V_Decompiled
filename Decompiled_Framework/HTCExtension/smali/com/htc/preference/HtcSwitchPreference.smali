.class public Lcom/htc/preference/HtcSwitchPreference;
.super Lcom/htc/preference/HtcTwoStatePreference;
.source "HtcSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcSwitchPreference$1;,
        Lcom/htc/preference/HtcSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/htc/preference/HtcSwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/htc/preference/HtcSwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/preference/HtcSwitchPreference$Listener;-><init>(Lcom/htc/preference/HtcSwitchPreference;Lcom/htc/preference/HtcSwitchPreference$1;)V

    iput-object v1, p0, Lcom/htc/preference/HtcSwitchPreference;->mListener:Lcom/htc/preference/HtcSwitchPreference$Listener;

    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setDisableDependentsState(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference;->onBindView(Landroid/view/View;)V

    const v1, 0x10202da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HtcToggleButton;

    iget-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    instance-of v1, v0, Lcom/htc/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/widget/HtcToggleButton;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSwitchPreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcSwitchPreference;->notifyChanged()V

    return-void
.end method
