.class public Lcom/android/systemui/statusbar/preference/Tweaks;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Tweaks.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Tweaks$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Tweaks$1;-><init>(Lcom/android/systemui/statusbar/preference/Tweaks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Tweaks;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mTitle:Landroid/widget/TextView;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mIcon:Landroid/widget/ImageView;

    const v3, 0x7f020264

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Tweaks;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
