.class public Lcom/htc/WifiRouter/PowerModeRemindDialog;
.super Landroid/app/Activity;
.source "PowerModeRemindDialog.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerModeRemindDialog"


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mPowerModeDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mRemindCheckBox:Landroid/widget/CheckBox;

.field private mSpinner:Lcom/htc/widget/HtcSpinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mRemindCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/WifiRouter/PowerModeRemindDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private getSelectionIndex(ILjava/lang/String;)I
    .locals 1
    .parameter "arrayResId"
    .parameter "selection"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getSelectionIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSelectionIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "array"
    .parameter "selection"

    .prologue
    .line 165
    if-eqz p2, :cond_1

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 167
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    .end local v0           #i:I
    :goto_1
    return v0

    .line 166
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setSpinnerAdapter(Lcom/htc/widget/HtcSpinner;I)V
    .locals 1
    .parameter "spinner"
    .parameter "arrayResId"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->setSpinnerAdapter(Lcom/htc/widget/HtcSpinner;[Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private setSpinnerAdapter(Lcom/htc/widget/HtcSpinner;[Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "items"

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x20900ee

    invoke-direct {v0, p0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 155
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x20900af

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private showPowerModeDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090052

    new-instance v4, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/PowerModeRemindDialog$2;-><init>(Lcom/htc/WifiRouter/PowerModeRemindDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090054

    new-instance v4, Lcom/htc/WifiRouter/PowerModeRemindDialog$1;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/PowerModeRemindDialog$1;-><init>(Lcom/htc/WifiRouter/PowerModeRemindDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 121
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 122
    .local v1, contentView:Landroid/widget/ScrollView;
    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mRemindCheckBox:Landroid/widget/CheckBox;

    .line 123
    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    iput-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;

    .line 124
    iget-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;

    const v3, 0x7f050003

    invoke-direct {p0, v2, v3}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->setSpinnerAdapter(Lcom/htc/widget/HtcSpinner;I)V

    .line 125
    iget-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;

    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setPromptId(I)V

    .line 126
    iget-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mSpinner:Lcom/htc/widget/HtcSpinner;

    iget-object v3, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSleepPolicy()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mPowerModeDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 134
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 76
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 77
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 79
    invoke-direct {p0}, Lcom/htc/WifiRouter/PowerModeRemindDialog;->showPowerModeDialog()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mPowerModeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/WifiRouter/PowerModeRemindDialog;->mPowerModeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 142
    :cond_0
    return-void
.end method
