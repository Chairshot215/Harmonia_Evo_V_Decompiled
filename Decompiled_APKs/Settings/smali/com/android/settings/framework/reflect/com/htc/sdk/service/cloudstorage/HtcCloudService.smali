.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;
.super Ljava/lang/Object;
.source "HtcCloudService.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sAccountInfoCached:Ljava/lang/Boolean;

.field private static sAccountInfoMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitCached:Ljava/lang/Boolean;

.field private static sInitMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sReleaseCached:Ljava/lang/Boolean;

.field private static sReleaseMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCloudService:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->TAG:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitCached:Ljava/lang/Boolean;

    .line 21
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseCached:Ljava/lang/Boolean;

    .line 22
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoCached:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceName"

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    .line 29
    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInternalServiceInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    .line 197
    return-void
.end method


# virtual methods
.method public accountInfo()[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 136
    const/4 v3, 0x0

    .line 140
    .local v3, mCloudStorageAccount:[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoCached:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    .line 141
    const-string v6, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v9, "accountInfo"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-static {v6, v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 144
    .local v4, method:Ljava/lang/reflect/Method;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoMethod:Ljava/lang/ref/SoftReference;

    .line 145
    if-eqz v4, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoCached:Ljava/lang/Boolean;

    .line 148
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoCached:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 149
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 150
    .restart local v4       #method:Ljava/lang/reflect/Method;
    if-nez v4, :cond_1

    .line 152
    const-string v6, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v9, "accountInfo"

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v6, v9, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 155
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sAccountInfoMethod:Ljava/lang/ref/SoftReference;

    .line 159
    :cond_1
    iget-object v6, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 160
    .local v5, service:Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 162
    iget-object v6, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInternalServiceInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    :cond_2
    move-object v6, v7

    .line 167
    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    .line 169
    .local v0, cloudAccounts:[Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 170
    array-length v2, v0

    .line 171
    .local v2, length:I
    new-array v3, v2, [Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 173
    new-instance v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    aget-object v7, v0, v1

    invoke-direct {v6, v7}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;-><init>(Ljava/lang/Object;)V

    aput-object v6, v3, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #cloudAccounts:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v5           #service:Ljava/lang/Object;
    :cond_3
    move v6, v8

    .line 145
    goto :goto_0

    .restart local v0       #cloudAccounts:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v5       #service:Ljava/lang/Object;
    :cond_4
    move-object v7, v3

    .line 180
    .end local v0           #cloudAccounts:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #service:Ljava/lang/Object;
    :cond_5
    :goto_2
    return-object v7

    .line 178
    :cond_6
    sget-object v6, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->TAG:Ljava/lang/String;

    const-string v8, "HtcCloudService.accountInfo() doesn\'t exist."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public init()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitCached:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 45
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v4, "init"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitMethod:Ljava/lang/ref/SoftReference;

    .line 49
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitCached:Ljava/lang/Boolean;

    .line 52
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 54
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 56
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v4, "init"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v2, v4, v3}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sInitMethod:Ljava/lang/ref/SoftReference;

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, service:Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInternalServiceInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    .line 70
    :cond_2
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 74
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #service:Ljava/lang/Object;
    :goto_1
    return v3

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v2, v3

    .line 49
    goto :goto_0

    .line 73
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_4
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->TAG:Ljava/lang/String;

    const-string v4, "HtcCloudService.init() doesn\'t exist."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 91
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseCached:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 92
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v4, "release"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseMethod:Ljava/lang/ref/SoftReference;

    .line 96
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseCached:Ljava/lang/Boolean;

    .line 99
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 101
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 103
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudService"

    const-string v4, "release"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v2, v4, v3}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->sReleaseMethod:Ljava/lang/ref/SoftReference;

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, service:Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mServiceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInternalServiceInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->mCloudService:Ljava/lang/ref/SoftReference;

    .line 117
    :cond_2
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #service:Ljava/lang/Object;
    :goto_1
    return-void

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v2, v3

    .line 96
    goto :goto_0

    .line 120
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_4
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->TAG:Ljava/lang/String;

    const-string v3, "HtcCloudService.release() doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
