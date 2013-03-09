.class public final Lcom/htc/dockmode/preference/HtcConnectionTypePreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcConnectionTypePreference.java"


# static fields
.field private static final DEFAULT_CONNECTION_TYPE_VALUE:I = 0x0

.field private static final DESKDOCK_CONNECTION_TYPE:Ljava/lang/String; = "deskdock_connection_type"

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_INTERNET_SHARING:Z = false

.field public static final KEY:Ljava/lang/String; = "CONNECTION_TYPE"


# instance fields
.field private final INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private chargeOnly:Ljava/lang/String;

.field private charge_only:Ljava/lang/String;

.field private customizedNS:Z

.field private customizedUsbToPC:Z

.field private defaultConnectionType:Ljava/lang/String;

.field private disk:Ljava/lang/String;

.field private disk_drive:Ljava/lang/String;

.field private entries:[Ljava/lang/String;

.field private entryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entryValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entryValues:[Ljava/lang/String;

.field private function:Ljava/lang/String;

.field private htcSync:Ljava/lang/String;

.field private htc_sync:Ljava/lang/String;

.field private internetPassThrough:Ljava/lang/String;

.field private internet_pass_through:Ljava/lang/String;

.field private internet_sharing:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultType:Ljava/lang/String;

.field private final mDockMode:I

.field private mSettingFrom:Ljava/lang/String;

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

.field private mediaSync:Ljava/lang/String;

.field private media_sync:Ljava/lang/String;

.field private networkSharing:Ljava/lang/String;

.field private prefName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 56
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_2

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x59

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->FEATURE_INTERNET_SHARING:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "HtcConnectionTypePreference"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    .line 39
    const-string v0, "HTC Sync"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    .line 40
    const-string v0, "Disk drive"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    .line 41
    const-string v0, "Mobile network sharing"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    .line 42
    const-string v0, "Media Sync"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    .line 43
    const-string v0, "Internet pass through"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    .line 44
    const-string v0, "SettingFrom"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mSettingFrom:Ljava/lang/String;

    .line 45
    const-string v0, "DefaultType"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mDefaultType:Ljava/lang/String;

    .line 46
    const-string v0, "default_type"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->defaultConnectionType:Ljava/lang/String;

    .line 47
    const-string v0, "pimSyncPref"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->prefName:Ljava/lang/String;

    .line 48
    const-string v0, "default_type_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mDockMode:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    .line 73
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "HtcConnectionTypePreference"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    .line 39
    const-string v0, "HTC Sync"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    .line 40
    const-string v0, "Disk drive"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    .line 41
    const-string v0, "Mobile network sharing"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    .line 42
    const-string v0, "Media Sync"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    .line 43
    const-string v0, "Internet pass through"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    .line 44
    const-string v0, "SettingFrom"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mSettingFrom:Ljava/lang/String;

    .line 45
    const-string v0, "DefaultType"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mDefaultType:Ljava/lang/String;

    .line 46
    const-string v0, "default_type"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->defaultConnectionType:Ljava/lang/String;

    .line 47
    const-string v0, "pimSyncPref"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->prefName:Ljava/lang/String;

    .line 48
    const-string v0, "default_type_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mDockMode:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 347
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 348
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 354
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 353
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "func"
    .parameter "context"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_3

    .line 368
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_6
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initialCustomizedParams(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 269
    const-string v4, "pimSyncPref"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 270
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 271
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isCustomized"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v6, :cond_2

    .line 272
    const-string v4, "content://customization_settings/SettingTable/system_Settings"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, bdl:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 274
    const-string v4, "customized_value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 275
    .local v1, bdlsettings:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 276
    const-string v4, "has_netsharing"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    .line 277
    const-string v4, "has_connect_to_pc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    .line 283
    .end local v1           #bdlsettings:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v4, "isCustomized"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v4, "customizedNS"

    iget-boolean v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v4, "customizedUsbToPC"

    iget-boolean v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    .end local v0           #bdl:Landroid/os/Bundle;
    :goto_1
    const-string v4, "HtcConnectionTypePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CustomizedNS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v4, "HtcConnectionTypePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CustomizedUsbToPC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 279
    .restart local v0       #bdl:Landroid/os/Bundle;
    .restart local v1       #bdlsettings:Landroid/os/Bundle;
    :cond_1
    sget-boolean v4, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->FEATURE_INTERNET_SHARING:Z

    iput-boolean v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    .line 280
    iput-boolean v6, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    goto :goto_0

    .line 288
    .end local v0           #bdl:Landroid/os/Bundle;
    .end local v1           #bdlsettings:Landroid/os/Bundle;
    :cond_2
    const-string v4, "customizedNS"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    .line 289
    const-string v4, "customizedUsbToPC"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedUsbToPC:Z

    goto :goto_1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const v4, 0x7f08003a

    .line 90
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 91
    const-string v3, "CONNECTION_TYPE"

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setKey(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setTitle(I)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setDialogTitle(I)V

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setPersistent(Z)V

    .line 98
    iput-object p1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f080041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->charge_only:Ljava/lang/String;

    .line 101
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_8

    .line 102
    const v3, 0x7f08003c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htc_sync:Ljava/lang/String;

    .line 106
    :goto_0
    const v3, 0x7f08003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk_drive:Ljava/lang/String;

    .line 108
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_9

    .line 109
    const v3, 0x7f08003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_sharing:Ljava/lang/String;

    .line 113
    :goto_1
    const v3, 0x7f080040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->media_sync:Ljava/lang/String;

    .line 114
    const v3, 0x7f080043

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_pass_through:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 120
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_connection_type"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 122
    const-string v3, "HtcConnectionTypePreference"

    const-string v4, "First launch or not assign a value to default connection type."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isChargeOnlyAvaliable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->charge_only:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->charge_only:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isHTCSyncAvaliable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htc_sync:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htc_sync:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isDiskDriveAvaliable()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 137
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk_drive:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk_drive:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isInternetSharingAvaliable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_sharing:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_sharing:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_5
    invoke-static {}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isMediaSyncAvaliable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->media_sync:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->media_sync:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_6
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->isInternetPassThroughAvaliable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 159
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_pass_through:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->map:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_pass_through:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_7
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entries:[Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 166
    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 104
    .end local v0           #i:I
    :cond_8
    const v3, 0x7f08003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htc_sync:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :cond_9
    const v3, 0x7f08003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internet_sharing:Ljava/lang/String;

    goto/16 :goto_1

    .line 141
    :cond_a
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    goto/16 :goto_2

    .line 168
    .restart local v0       #i:I
    :cond_b
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entries:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValues:[Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 172
    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 174
    :cond_c
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->entryValues:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v4}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->function:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method private isChargeOnlyAvaliable()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method private isDiskDriveAvaliable()Z
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 238
    :cond_0
    const/4 v1, 0x1

    .line 240
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHTCSyncAvaliable()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method private isInternetPassThroughAvaliable()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method private isInternetSharingAvaliable()Z
    .locals 2

    .prologue
    .line 244
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->initialCustomizedParams(Landroid/content/Context;)V

    .line 248
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->customizedNS:Z

    goto :goto_0
.end method

.method public static isMediaSyncAvaliable()Z
    .locals 2

    .prologue
    .line 252
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWirelessModemAvaliable()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method private loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v2

    .line 300
    :cond_1
    if-eqz p2, :cond_0

    .line 303
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 307
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 308
    const-string v0, "HtcConnectionTypePreference"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const-string v0, "HtcConnectionTypePreference"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 318
    :cond_3
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 319
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_4

    .line 320
    const-string v0, "HtcConnectionTypePreference"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 324
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, data:[B
    const/4 v6, 0x0

    .line 330
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 331
    invoke-direct {p0, v8}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 336
    if-eqz v7, :cond_5

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v7, 0x0

    :cond_5
    :goto_1
    move-object v2, v6

    .line 342
    goto :goto_0

    .line 332
    :catch_0
    move-exception v9

    .line 333
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcConnectionTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v6, 0x0

    .line 336
    if-eqz v7, :cond_5

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v7, 0x0

    goto :goto_1

    .line 336
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 337
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v7, 0x0

    :cond_6
    throw v0
.end method

.method private setChargeOnly()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    return-void
.end method

.method private setDiskDrive()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    return-void
.end method

.method private setHtcSync()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    return-void
.end method

.method private setInternetPassThrough()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    return-void
.end method

.method private setInternetSharing()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    return-void
.end method

.method private setMediaSync()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, defaultValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->chargeOnly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setChargeOnly()V

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "default_type_change_notify_from_dock"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_1
    return-void

    .line 188
    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->htcSync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setHtcSync()V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->disk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setDiskDrive()V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->networkSharing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setInternetSharing()V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mediaSync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setMediaSync()V

    goto :goto_0

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->internetPassThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setInternetPassThrough()V

    goto :goto_0
.end method

.method public setDefaultType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setValue(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    return-void
.end method
