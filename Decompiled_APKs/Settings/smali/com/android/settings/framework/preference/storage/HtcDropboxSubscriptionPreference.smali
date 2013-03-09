.class public Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDropboxSubscriptionPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCategory:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/htc/preference/HtcPreferenceCategory;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "category"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 72
    iput-object p4, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->initSummary()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "category"

    .prologue
    .line 58
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/htc/preference/HtcPreferenceCategory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 48
    return-void
.end method

.method private getTimeFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "mDate"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/String;

    .end local v0           #dateFormat:Ljava/lang/CharSequence;
    return-object v0
.end method

.method private initSummary()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0c0aa0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->setSummary(I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 14

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, isServiceExist:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->listServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, services:[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 121
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->TAG:Ljava/lang/String;

    const-string v13, "Dropbox service doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v12, "Service doesn\'t exist."

    .line 168
    :goto_0
    return-object v12

    .line 125
    :cond_0
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v10, v1, v5

    .line 126
    .local v10, service:Ljava/lang/String;
    const-string v12, "dropbox"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 127
    const/4 v6, 0x1

    .line 131
    .end local v10           #service:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 132
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 133
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->TAG:Ljava/lang/String;

    const-string v13, "Dropbox service doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v12, "Service doesn\'t exist."

    goto :goto_0

    .line 125
    .restart local v10       #service:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v10           #service:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "dropbox"

    invoke-static {v12, v13}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v8

    .line 142
    .local v8, mCloudService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;
    if-nez v8, :cond_4

    .line 143
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 144
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->TAG:Ljava/lang/String;

    const-string v13, "mCloudService is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v12, "CloudService doesn\'t exist"

    goto :goto_0

    .line 148
    :cond_4
    const/4 v0, 0x0

    .line 152
    .local v0, accountInfo:[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->init()Z

    .line 153
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->accountInfo()[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    .line 154
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    if-nez v0, :cond_5

    .line 161
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 162
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->TAG:Ljava/lang/String;

    const-string v13, "accountInfo is null. The account is not assigned."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v12, " The account is not assigned."

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 166
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v12}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getExpiredDate()J

    move-result-wide v3

    .line 167
    .local v3, expireDateInfo:J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 168
    .local v9, mDate:Ljava/util/Date;
    invoke-direct {p0, v9}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;->getTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method
