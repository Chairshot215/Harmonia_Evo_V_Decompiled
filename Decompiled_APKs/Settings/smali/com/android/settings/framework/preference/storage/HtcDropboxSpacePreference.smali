.class public Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcDropboxSpacePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableSpaceInfo:Ljava/lang/String;

.field mCategory:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/htc/preference/HtcPreferenceCategory;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mAvailableSpaceInfo:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mAvailableSpaceInfo:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->initSummary()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "category"

    .prologue
    .line 55
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/htc/preference/HtcPreferenceCategory;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 45
    return-void
.end method

.method private initSummary()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0c0aa0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->setSummary(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 15

    .prologue
    .line 96
    const/4 v6, 0x0

    .line 97
    .local v6, isServiceExist:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->listServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, services:[Ljava/lang/String;
    if-nez v10, :cond_0

    .line 99
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 100
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->TAG:Ljava/lang/String;

    const-string v13, "Dropbox service doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v5, "Service doesn\'t exist."

    .line 148
    :goto_0
    return-object v5

    .line 103
    :cond_0
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 104
    .local v9, service:Ljava/lang/String;
    const-string v12, "dropbox"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 105
    const/4 v6, 0x1

    .line 110
    .end local v9           #service:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 111
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 112
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->TAG:Ljava/lang/String;

    const-string v13, "Dropbox service doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v5, "Service doesn\'t exist."

    goto :goto_0

    .line 103
    .restart local v9       #service:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v9           #service:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "dropbox"

    invoke-static {v12, v13}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v8

    .line 121
    .local v8, mCloudService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;
    if-nez v8, :cond_4

    .line 122
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 123
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->TAG:Ljava/lang/String;

    const-string v13, "mCloudService is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v5, "CloudService doesn\'t exist."

    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x0

    .line 131
    .local v0, accountInfo:[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->init()Z

    .line 132
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->accountInfo()[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    .line 133
    invoke-virtual {v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_2
    if-nez v0, :cond_5

    .line 139
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 140
    sget-object v12, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->TAG:Ljava/lang/String;

    const-string v13, "accountInfo is null. The account is not assigned."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v5, "The account is not assigned."

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 145
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v12}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, emailInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v0, v13

    invoke-virtual {v13}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getQuota()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, spaceInfo:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;->mAvailableSpaceInfo:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, info:Ljava/lang/String;
    goto/16 :goto_0
.end method
