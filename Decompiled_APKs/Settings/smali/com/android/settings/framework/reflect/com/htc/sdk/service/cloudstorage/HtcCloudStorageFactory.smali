.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;
.super Ljava/lang/Object;
.source "HtcCloudStorageFactory.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sGetServiceInstanceCached:Ljava/lang/Boolean;

.field private static sGetServiceInstanceMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sListServicesCached:Ljava/lang/Boolean;

.field private static sListServicesMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesCached:Ljava/lang/Boolean;

    .line 20
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceCached:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalServiceInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "context"
    .parameter "serviceName"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 97
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceCached:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 98
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudStorageFactory"

    const-string v5, "getServiceInstance"

    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    .local v1, method:Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceMethod:Ljava/lang/ref/SoftReference;

    .line 102
    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceCached:Ljava/lang/Boolean;

    .line 105
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 107
    .restart local v1       #method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 109
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudStorageFactory"

    const-string v5, "getServiceInstance"

    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sGetServiceInstanceMethod:Ljava/lang/ref/SoftReference;

    .line 114
    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p1, v0, v3

    .line 115
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v2, v4

    .line 102
    goto :goto_0

    .line 117
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_3
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    const-string v3, "HtcCloudStorageFactory.getServiceInstance(Context, String) doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;
    .locals 1
    .parameter "context"
    .parameter "serviceName"

    .prologue
    .line 35
    new-instance v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static listServices(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesCached:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 53
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudStorageFactory"

    const-string v5, "listServices"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, method:Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesMethod:Ljava/lang/ref/SoftReference;

    .line 57
    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesCached:Ljava/lang/Boolean;

    .line 60
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 62
    .restart local v1       #method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 64
    const-string v2, "com.htc.sdk.service.cloudstorage.HtcCloudStorageFactory"

    const-string v5, "listServices"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sListServicesMethod:Ljava/lang/ref/SoftReference;

    .line 69
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    .line 70
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 73
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v2, v4

    .line 57
    goto :goto_0

    .line 72
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_3
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    const-string v3, "HtcCloudStorageFactory.listServices(Context ) doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x0

    goto :goto_1
.end method
