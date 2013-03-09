.class public Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;
.super Ljava/lang/Object;
.source "CdmaSubscriptionInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaSubscriptionInfo"


# instance fields
.field public mHomeNetworkId:[I

.field public mHomeSystemId:[I

.field public mMdn:Ljava/lang/String;

.field public mMin:Ljava/lang/String;

.field public mPrlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    return-void
.end method


# virtual methods
.method public isHomeSid(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSidsAllZeros()Z
    .locals 2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public populateSubscriptionInfoFromRegistrationState([Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMdn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    const/4 v1, 0x0

    :goto_1
    array-length v4, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v1, v4, :cond_0

    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing mdn: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v4, 0x2

    :try_start_4
    aget-object v4, p1, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    const/4 v1, 0x0

    :goto_3
    array-length v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-ge v1, v4, :cond_1

    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_6
    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v4, 0x3

    :try_start_7
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mMin:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_5
    return-void

    :catch_5
    move-exception v0

    const-string v4, "CdmaSubscriptionInfo"

    const-string v5, "error parsing min: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setPrlVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSubscriptionInfo;->mPrlVersion:Ljava/lang/String;

    return-void
.end method
