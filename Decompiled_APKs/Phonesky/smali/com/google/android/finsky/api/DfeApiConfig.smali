.class public Lcom/google/android/finsky/api/DfeApiConfig;
.super Ljava/lang/Object;
.source "DfeApiConfig.java"


# static fields
.field public static androidId:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static authTokenType:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bulkDetailsTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static clientId:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final dfeRequestTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static loggingId:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static protoLogUrlRegexp:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final showStagingData:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final verifyAssociationMaxRetries:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final verifyAssociationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const v4, 0x88b8

    const/4 v3, 0x0

    .line 17
    const-string v2, "finsky.mcc_mnc_override"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    .line 23
    const-string v0, "finsky.proto_log_url_regexp"

    const-string v2, ".*"

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->protoLogUrlRegexp:Lcom/google/android/finsky/config/GservicesValue;

    .line 29
    const-string v0, "finsky.dfe_request_timeout_ms"

    const/16 v2, 0x9c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeRequestTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    .line 35
    const-string v0, "finsky.dfe_max_retries"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    .line 41
    const-string v0, "finsky.dfe_backoff_multiplier"

    const/high16 v2, 0x3f80

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->dfeBackoffMultipler:Lcom/google/android/finsky/config/GservicesValue;

    .line 47
    const-string v0, "finsky.ip_country_override"

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    .line 50
    const-string v0, "android_id"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    .line 52
    const-string v0, "finsky.auth_token_type"

    const-string v1, "androidmarket"

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->authTokenType:Lcom/google/android/finsky/config/GservicesValue;

    .line 55
    const-string v0, "logging_id2"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    .line 58
    const-string v0, "market_client_id"

    const-string v1, "am-google"

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    .line 64
    const-string v0, "finsky.purchase_status_timeout_ms"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    .line 70
    const-string v0, "finsky.bulk_details_timeout_ms"

    const/16 v1, 0x7530

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->bulkDetailsTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    .line 76
    const-string v0, "finsky.verify_association_timeout_ms"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    .line 82
    const-string v0, "finsky.verify_association_max_retries"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->verifyAssociationMaxRetries:Lcom/google/android/finsky/config/GservicesValue;

    .line 89
    const-string v0, "finsky.skip_all_caches"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    .line 93
    const-string v0, "finsky.show_staging_data"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
