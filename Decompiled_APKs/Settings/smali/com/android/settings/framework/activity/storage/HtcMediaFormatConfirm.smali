.class public Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.super Landroid/app/Fragment;
.source "HtcMediaFormatConfirm.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field mStorageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    .line 62
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 120
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method private establishFinalConfirmationState(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "inflater"

    .prologue
    .line 81
    const v5, 0x7f04004f

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, finalView:Landroid/view/View;
    const v5, 0x7f0800e6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, finalText:Landroid/widget/TextView;
    const v5, 0x7f0800e7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, finalButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, argument:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    const-string v5, "extra.storage.type"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    .line 99
    :cond_0
    iget v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 101
    const v5, 0x7f0c0100

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    .local v4, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 110
    const/16 v5, 0x8

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 113
    .end local v4           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->establishFinalConfirmationState(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 203
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->ON_BACK_KEY_UP:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 208
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 169
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    sget-object v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->NOT_YET:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->resetFragmentKeyListener()V

    .line 184
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 157
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V

    .line 163
    :cond_0
    return-void
.end method
