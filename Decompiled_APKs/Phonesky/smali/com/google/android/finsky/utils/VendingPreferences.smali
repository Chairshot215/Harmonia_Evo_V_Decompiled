.class public Lcom/google/android/finsky/utils/VendingPreferences;
.super Ljava/lang/Object;
.source "VendingPreferences.java"


# static fields
.field public static final ACCOUNT_SPECIFIC_PREFIXES:[Ljava/lang/String;

.field public static AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static CACHED_GL_EXTENSIONS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static GL_DRIVER_CRASHED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_BUILD_FINGERPRINT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_METADATA_WARNING_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrefs:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 21
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "last_checkin_hash_"

    aput-object v4, v0, v3

    const-string v4, "last_systems_apps_hash_"

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const-string v5, "last_market_alarm_timeout_"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "last_market_alarm_start_time_"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "account_exists_"

    aput-object v5, v0, v4

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->ACCOUNT_SPECIFIC_PREFIXES:[Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v4, "vending_preferences"

    invoke-direct {v0, v4, v3}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    .line 51
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v5, "cached_gl_extensions"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->CACHED_GL_EXTENSIONS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 60
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v4, "gl_driver_crashed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->GL_DRIVER_CRASHED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 64
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v5, "last_build_fingerprint"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 94
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v4, "finsky_backed_up"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 102
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v4, "finsky_restored_android_id"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 110
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "ads_interest_based"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 117
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last_metadata_warning_timestamp"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_METADATA_WARNING_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 121
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "notify_updates"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 126
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "update_over_wifi_only"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 133
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "user_notified_about_auto_update"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->HAS_SEEN_AUTO_UPDATE_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 139
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "auto_update_default"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 142
    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v4, "auto_add_shortcuts"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    return-void

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 5
    .parameter "accounts"
    .parameter "accountName"

    .prologue
    .line 149
    move-object v1, p0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 150
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const/4 v4, 0x1

    .line 155
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v4

    .line 149
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getAccountExists(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_exists_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getMainPrefs()Lcom/google/android/finsky/config/PreferenceFile;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    return-object v0
.end method

.method public static getMarketAlarmStartTime(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_market_alarm_start_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getMarketAlarmTimeout(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_market_alarm_timeout_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getNewAccounts([Landroid/accounts/Account;)[Ljava/lang/String;
    .locals 6
    .parameter "accounts"

    .prologue
    .line 200
    const/4 v4, 0x0

    .line 202
    .local v4, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 203
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/VendingPreferences;->getAccountExists(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 204
    if-nez v4, :cond_0

    .line 205
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 207
    :cond_0
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    .line 212
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 214
    :goto_1
    return-object v5

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_1
.end method

.method public static saveCurrentAccountList([Landroid/accounts/Account;)V
    .locals 11
    .parameter "accounts"

    .prologue
    .line 168
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v9}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 169
    .local v8, prefsFile:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 170
    .local v1, all:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 171
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .line 174
    .local v3, dirty:Z
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 175
    .local v6, key:Ljava/lang/String;
    const-string v9, "account_exists_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 176
    const-string v9, "account_exists_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, account:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/VendingPreferences;->contains([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 178
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const/4 v3, 0x1

    goto :goto_0

    .line 183
    .end local v0           #account:Ljava/lang/String;
    .end local v6           #key:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    .line 186
    :cond_2
    move-object v2, p0

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v0, v2, v5

    .line 187
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/VendingPreferences;->getAccountExists(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 188
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/finsky/utils/VendingPreferences;->getAccountExists(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 186
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 191
    .end local v0           #account:Landroid/accounts/Account;
    :cond_4
    return-void
.end method
