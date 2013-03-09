.class public Lcom/htc/android/psclient/RestoreUsbSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "RestoreUsbSettings.java"


# instance fields
.field private ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final TAG:Ljava/lang/String;

.field private askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

.field private button_id:I

.field private charge_only:Ljava/lang/String;

.field private connectionTypeFilter:Landroid/content/IntentFilter;

.field private context:Landroid/content/Context;

.field private defaultType:Lcom/htc/preference/HtcPreference;

.field private disk_drive:Ljava/lang/String;

.field protected editor:Landroid/content/SharedPreferences$Editor;

.field private function:Ljava/lang/String;

.field private htc_sync:Ljava/lang/String;

.field private internet_pass_through:Ljava/lang/String;

.field private internet_sharing:Ljava/lang/String;

.field private itemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/String;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private media_sync:Ljava/lang/String;

.field private modem_link:Ljava/lang/String;

.field protected prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 22
    const-string v0, "RestoreUsbSettings"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    .line 219
    new-instance v0, Lcom/htc/android/psclient/RestoreUsbSettings$3;

    invoke-direct {v0, p0}, Lcom/htc/android/psclient/RestoreUsbSettings$3;-><init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/psclient/RestoreUsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/psclient/RestoreUsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setInternetPassThrough()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/android/psclient/RestoreUsbSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setChargeOnly()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setHtcSync()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setDiskDrive()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setInternetSharing()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setModemLink()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->setMediaSync()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 173
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isChargeOnlyAvaliable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->charge_only:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Charge Only"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->charge_only:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDiskDriveAvaliable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->disk_drive:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Disk Drive"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->disk_drive:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isHTCSyncAvaliable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->htc_sync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "HTC Sync"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->htc_sync:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/psclient/PSCommon;->isInternetSharingAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_sharing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Internet Sharing"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_sharing:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_3
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isModemLinkAvaliable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->modem_link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Modem link"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->modem_link:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_4
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMediaSyncAvaliable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->media_sync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Media Sync"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->media_sync:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_5
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isInternetPassThroughAvaliable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_pass_through:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;

    const-string v2, "Internet Pass Through"

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_pass_through:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->items:[Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 215
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->items:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0           #i:I
    :cond_7
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "usb_default_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    const-string v2, "Disk Drive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "Charge Only"

    iput-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    goto/16 :goto_0

    .line 217
    .restart local v0       #i:I
    :cond_8
    return-void
.end method

.method private setChargeOnly()V
    .locals 3

    .prologue
    .line 258
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Charge Only"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    return-void
.end method

.method private setDiskDrive()V
    .locals 3

    .prologue
    .line 265
    const-string v0, "Disk Drive"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Disk Drive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    return-void
.end method

.method private setHtcSync()V
    .locals 3

    .prologue
    .line 272
    const-string v0, "HTC Sync"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 274
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "HTC Sync"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    return-void
.end method

.method private setInternetPassThrough()V
    .locals 3

    .prologue
    .line 298
    const-string v0, "Internet Pass Through"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 300
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Internet Pass Through"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    return-void
.end method

.method private setInternetSharing()V
    .locals 3

    .prologue
    .line 279
    const-string v0, "Internet Sharing"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 280
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Internet Sharing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private setMediaSync()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "Media Sync"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 307
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Media Sync"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void
.end method

.method private setModemLink()V
    .locals 3

    .prologue
    .line 291
    const-string v0, "Modem link"

    iput-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 293
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_default_type"

    const-string v2, "Modem link"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 313
    const-string v0, "RestoreUsbSettings"

    const-string v1, "-onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v2, "RestoreUsbSettings"

    const-string v3, "-onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->context:Landroid/content/Context;

    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    .line 49
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_CHARGEONLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_DISK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_HTCSYNC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_INTERNETSHARING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_MODEMLINK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_INTERNETPASSTHROUGH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_MEDIASYNC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_DONTASK_CHECKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "INTENT_DONTASK_UNCHECKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/psclient/RestoreUsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->charge_only:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->disk_drive:Ljava/lang/String;

    .line 62
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->htc_sync:Ljava/lang/String;

    .line 68
    :goto_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_sharing:Ljava/lang/String;

    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->modem_link:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_pass_through:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->media_sync:Ljava/lang/String;

    .line 77
    const-string v2, "pimSyncPref"

    invoke-virtual {p0, v2, v5}, Lcom/htc/android/psclient/RestoreUsbSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    .line 78
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-direct {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->init()V

    .line 81
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v2, v3}, Lcom/htc/android/psclient/PSCommon;->initialDefaultSettingForFota(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 82
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->addPreferencesFromResource(I)V

    .line 83
    const-string v2, "connection_type"

    invoke-virtual {p0, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    .line 84
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    new-instance v3, Lcom/htc/android/psclient/RestoreUsbSettings$1;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/RestoreUsbSettings$1;-><init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 134
    const-string v2, "ask_me"

    invoke-virtual {p0, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, checked:Z
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "usb_dont_ask"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 139
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "usb_dont_ask"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    :goto_2
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v3, Lcom/htc/android/psclient/RestoreUsbSettings$2;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/RestoreUsbSettings$2;-><init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "usb_default_type"

    const-string v4, "Charge Only"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDiskDriveAvaliable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    const-string v3, "Disk Drive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "Charge Only"

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 65
    .end local v0           #checked:Z
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->htc_sync:Ljava/lang/String;

    goto/16 :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/psclient/RestoreUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->internet_sharing:Ljava/lang/String;

    goto/16 :goto_1

    .line 141
    .restart local v0       #checked:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "usb_dont_ask"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/psclient/RestoreUsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    return-void
.end method
