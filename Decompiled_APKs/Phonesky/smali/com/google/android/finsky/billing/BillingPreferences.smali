.class public Lcom/google/android/finsky/billing/BillingPreferences;
.super Ljava/lang/Object;
.source "BillingPreferences.java"


# static fields
.field public static ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CARRIER_PII_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CARRIER_PII_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LOG_BILLING_EVENTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 16
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "billing_preferences"

    invoke-direct {v0, v2, v6}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    .line 24
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_dcb_provisioning_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 31
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "earliest_dcb_provisioning_check_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 36
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "metadata_billing_events_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LOG_BILLING_EVENTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 46
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "billing_countries_v2"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 54
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_billing_countries_check_v2"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 57
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "accepted_carrier_tos_version"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 69
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "carrier_pii_tos_version"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 72
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "carrier_pii_tos_url"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 84
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "carrier_dcb_tos_version"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 87
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "carrier_dcb_tos_url"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 102
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "device_association_needed"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 107
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last_dcb3_provisioning_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrierAcceptedDcbTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 3
    .parameter "subscriberId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrier_accepted_dcb_tos_version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getCarrierAcceptedPiiTos(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 3
    .parameter "subscriberId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrier_accepted_pii_tos_version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    return-object v0
.end method
