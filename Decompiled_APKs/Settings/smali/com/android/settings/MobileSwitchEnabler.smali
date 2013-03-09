.class public Lcom/android/settings/MobileSwitchEnabler;
.super Ljava/lang/Object;
.source "MobileSwitchEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# instance fields
.field mCM:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcToggleButton;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/settings/MobileSwitchEnabler;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 18
    iget-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mCM:Landroid/net/ConnectivityManager;

    .line 19
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 1
    .parameter "toggleButton"
    .parameter "isChecked"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 42
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 37
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 33
    return-void
.end method

.method public setSwitch(Lcom/htc/widget/HtcToggleButton;)V
    .locals 3
    .parameter "toggleButton"

    .prologue
    .line 21
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    if-ne v1, p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 23
    iput-object p1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 24
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 26
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 27
    .local v0, isEnabled:Z
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 28
    iget-object v1, p0, Lcom/android/settings/MobileSwitchEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
