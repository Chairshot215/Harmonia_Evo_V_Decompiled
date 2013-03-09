.class public Lcom/android/mms/ui/EewControlMenuPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "EewControlMenuPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final MSG_QUERY_NV_ITEM:I = 0x0

.field private static final MSG_SET_NV_ITEM:I = 0x1

.field public static final PREF_KEY_KDDI_TEST_EEW_ENABLE_CHECKBOX:Ljava/lang/String; = "pref_key_kddi_test_eew_enable_checkbox"

.field public static final PREF_KEY_VENDOR_TEST_EEW_ENABLE_CHECKBOX:Ljava/lang/String; = "pref_key_vendor_test_eew_enable_checkbox"

.field private static final TAG:Ljava/lang/String; = "EewControlMenuPreferenceActivity"

.field private static mTestData:[I


# instance fields
.field private mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

.field private mBgWorkLooper:Landroid/os/Looper;

.field private mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mTestData:[I

    return-object v0
.end method

.method static synthetic access$002([I)[I
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-object p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mTestData:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private findItems()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "pref_key_kddi_test_eew_enable_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 46
    const-string v0, "pref_key_vendor_test_eew_enable_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->findItems()V

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EewControlMenuPreferenceActivity"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkLooper:Landroid/os/Looper;

    .line 65
    new-instance v1, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v2, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;-><init>(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 103
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 90
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    const-string v1, "EewControlMenuPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 111
    :cond_0
    const-string v1, "EewControlMenuPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KddiTestCheckBox oncheck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "EewControlMenuPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VendorTestCheckBox oncheck: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 114
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 115
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 119
    :cond_1
    return v3

    :cond_2
    move v1, v3

    .line 113
    goto :goto_0

    :cond_3
    move v2, v3

    .line 114
    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 73
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mBgWorkHandler:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 78
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 96
    return-void
.end method
