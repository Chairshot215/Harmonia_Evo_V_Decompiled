.class public Lcom/android/mms/ui/SmsCenterPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "SmsCenterPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 66
    const v3, 0x1020003

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 68
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/mms/ui/SmsCenterPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, resDimen:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 71
    .local v1, layEdit:Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x7f0b00be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 77
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 81
    invoke-static {v5, v5, v6}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 83
    .end local v1           #layEdit:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #resDimen:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SmsCenterPreference;->mPinListener:Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/SmsCenterPreference;->mPinListener:Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;

    invoke-interface {v0, p0, p1}, Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;->onSmscEntered(Lcom/android/mms/ui/SmsCenterPreference;Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public setOnSmscEnteredListner(Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/SmsCenterPreference;->mPinListener:Lcom/android/mms/ui/SmsCenterPreference$OnSmscChangedListner;

    .line 60
    return-void
.end method
