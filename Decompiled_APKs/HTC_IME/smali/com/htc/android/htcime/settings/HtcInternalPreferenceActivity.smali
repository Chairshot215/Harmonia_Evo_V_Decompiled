.class public Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcInternalPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtcActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->getHtcActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    return-void
.end method
