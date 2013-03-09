.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "WifiAPITest.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final KEY_DISABLE_NETWORK:Ljava/lang/String; = "disable_network"

.field private static final KEY_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final KEY_ENABLE_NETWORK:Ljava/lang/String; = "enable_network"

.field private static final TAG:Ljava/lang/String; = "WifiAPITest"


# instance fields
.field private mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

.field private mWifiDisconnect:Lcom/htc/preference/HtcPreference;

.field private mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 72
    const v1, 0x7f04009b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 76
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 79
    const-string v1, "disable_network"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 82
    const-string v1, "enable_network"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAPITest;->onCreatePreferences()V

    .line 67
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "pref"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 148
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_2

    .line 104
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, alert:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v2, "Input"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 106
    const-string v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 108
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 110
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 119
    const-string v2, "Cancel"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 125
    .end local v0           #alert:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #input:Landroid/widget/EditText;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p1, v2, :cond_0

    .line 126
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0       #alert:Lcom/htc/widget/HtcAlertDialog$Builder;
    const-string v2, "Input"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 128
    const-string v2, "Enter Network ID"

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 130
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v1       #input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 132
    const-string v2, "Ok"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 141
    const-string v2, "Cancel"

    new-instance v3, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    .line 94
    const/4 v0, 0x0

    return v0
.end method
