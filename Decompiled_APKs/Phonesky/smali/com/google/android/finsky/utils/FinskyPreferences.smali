.class public Lcom/google/android/finsky/utils/FinskyPreferences;
.super Ljava/lang/Object;
.source "FinskyPreferences.java"


# static fields
.field public static final acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final acceptedPlusReviews:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final downloadManagerUsesFroyoStrings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final replicatedAccountAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final replicatedSystemAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

.field public static final versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final warmWelcomeShown:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final warmWelcomeShownTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "finsky"

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    .line 17
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_version_code"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 20
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "content-filter-level"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 23
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "account"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 26
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "pin_code"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 29
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "purchase-lock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 35
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "viewedFirstRun"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 41
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "dailyhygiene-failed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 47
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "dailyhygiene-lastsuccess"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 53
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "installation-replication-retries"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 57
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "dfe-notification-pending-acks"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 61
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last-replicated-database-version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 67
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "replicated-system-apps-hash"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedSystemAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 73
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last-tos-token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 79
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "accepted-anti-malware-consent"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 85
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "replicated-account-apps-hash:"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedAccountAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 91
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "check-promo-offers"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 97
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last-gaia-auth-timestamp"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 112
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "warm-welcome-shown"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->warmWelcomeShown:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 119
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "warm-welcome-shown-timestamp"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->warmWelcomeShownTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    .line 123
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "my-library-widget-top-affinities"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 125
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "my-library-widget-bottom-affinities"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 127
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "my-library-widget-left-affinities"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 129
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "my-library-widget-right-affinities"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 138
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "download-manager-uses-froyo-strings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->downloadManagerUsesFroyoStrings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 144
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "accepted-plus-reviews"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedPlusReviews:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryServerToken(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 3
    .parameter "libraryId"
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
    .line 105
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server_token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    return-object v0
.end method
