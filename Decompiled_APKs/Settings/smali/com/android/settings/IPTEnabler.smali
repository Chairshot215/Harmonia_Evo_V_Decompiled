.class public Lcom/android/settings/IPTEnabler;
.super Ljava/lang/Object;
.source "IPTEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field public static final IPTConnecting_Intent:Ljava/lang/String; = "com.htc.ipt.connecting"

.field public static final ISEnabled:Ljava/lang/String; = "com.htc.is.enabled"

.field private static final MSG_IPTConnecting:I = 0x6

.field private static final MSG_IPTDisabled:I = 0x5

.field private static final MSG_IPTEnabled:I = 0x4

.field private static final MSG_ISEnabled:I = 0x3

.field private static final MSG_USBPLUG:I = 0x1

.field private static final MSG_USBUNPLUG:I = 0x2

.field public static final Tag:Ljava/lang/String; = "PSReceiver"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private DBG:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 45
    new-instance v0, Lcom/android/settings/IPTEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IPTEnabler$1;-><init>(Lcom/android/settings/IPTEnabler;)V

    iput-object v0, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/android/settings/IPTEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IPTEnabler$2;-><init>(Lcom/android/settings/IPTEnabler;)V

    iput-object v0, p0, Lcom/android/settings/IPTEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    sput-object p1, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 37
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.is.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ipt.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ipt.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.disable.ipt"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    const-string v1, "internet_ps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IPTEnabler;->sp:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IPTEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/IPTEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/IPTEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    return v0
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PSReceiver"

    const-string v1, "Sent StartPS from IPTENabler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    sget-object v0, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.start_IPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    sget-object v0, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ipt.connecting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_2
    sget-object v0, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.stop_IPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PSReceiver"

    const-string v1, "Sent StopPS from IPTENabler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 185
    iget-boolean v1, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSReceiver"

    const-string v2, "IPTEnabler pause called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 188
    :try_start_0
    sget-object v1, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/IPTEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-static {}, Lcom/android/settings/PSReceiver;->isUsbConnected()Z

    move-result v2

    .line 151
    .local v2, isUSBPlugged:Z
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v4, "ps_enabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    .local v1, isPSEnabled:Z
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v4, "ipt_connectpass"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    .local v0, isIPTConnPass:Z
    iget-boolean v3, p0, Lcom/android/settings/IPTEnabler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IPTEnabler resume called, USBPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PSEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IPTConnPass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 159
    sget-object v3, Lcom/android/settings/IPTEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/IPTEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/IPTEnabler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    if-ne v2, v7, :cond_4

    .line 162
    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 164
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    if-nez v1, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 172
    :cond_3
    if-ne v0, v7, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/IPTEnabler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/IPTEnabler;->mToggleIPT:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c04fc

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method
