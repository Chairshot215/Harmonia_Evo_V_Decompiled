.class public Lcom/android/settings/wifi/WifiOffloadSettings;
.super Landroid/app/Activity;
.source "WifiOffloadSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final KEY_ADD_OTHER_NETWORK:Ljava/lang/String; = "add_network"

.field private static final KEY_DISABLE_WIFI:Ljava/lang/String; = "disable_wifi"

.field private static final KEY_NEVER_AUTO_TURN_ON_WIFI:Ljava/lang/String; = "never_auto_turn_on_wifi"

.field private static final KEY_NOTIFY_ME:Ljava/lang/String; = "notify_me"

.field private static final KEY_OPEN_NETWORK_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_REMINDING_NEXT_TIME:Ljava/lang/String; = "reminding_next_time"

.field private static final KEY_WIFI_ENABLED:Ljava/lang/String; = "enable_wifi"

.field private static final KEY_WIFI_SETTINGS:Ljava/lang/String; = "wifi_settings"

.field private static final KEY_WPS_PBC:Ljava/lang/String; = "wps_pbc_mode"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadSettings"


# instance fields
.field private exit:Z

.field private mOptionList:Landroid/widget/ListView;

.field private mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

.field private turnOffWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->turnOffWifi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiOffloadSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    return-void
.end method

.method private setInstruction(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 107
    const v1, 0x7f080205

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, instruction:Landroid/widget/TextView;
    const v1, 0x7f0c0603

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    return-void
.end method

.method private setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 95
    const v2, 0x7f08000b

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    .local v1, title:Landroid/widget/TextView;
    const-string v2, "setting_title_color"

    const v3, 0x7f0a0022

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, color_id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    return-void
.end method

.method private setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 101
    const v2, 0x7f0800cd

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .local v0, divider:Landroid/widget/ImageView;
    const-string v2, "oobe_title_divider"

    const v3, 0x7f020042

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, divider_id:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    return-void
.end method

.method private setupTimer()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    .line 233
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 61
    const-string v2, "WifiOffloadSettings"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f0400a2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadSettings;->setContentView(I)V

    .line 65
    invoke-direct {p0, p0, p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 66
    invoke-direct {p0, p0, p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0, p0, p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setInstruction(Landroid/content/Context;Landroid/app/Activity;)V

    .line 69
    invoke-static {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 73
    .local v0, WiFiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 78
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0605

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const v2, 0x7f0801ac

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mOptionList:Landroid/widget/ListView;

    .line 82
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mOptionList:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0400a4

    const v5, 0x7f080209

    invoke-direct {v3, p0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mOptionList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mOptionList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/wifi/WifiOffloadSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiOffloadSettings$1;-><init>(Lcom/android/settings/wifi/WifiOffloadSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 198
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    sparse-switch p2, :sswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 205
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    const-string v0, "WifiOffloadSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sparse-switch p1, :sswitch_data_0

    .line 227
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 223
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 225
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    goto :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->finish()V

    .line 154
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    .line 145
    return-void
.end method

.method public updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 190
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 191
    const-string v0, "WifiOffloadSettings"

    const-string v1, "already connected to wifi finish wifi offload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->finish()V

    .line 195
    :cond_0
    return-void
.end method
