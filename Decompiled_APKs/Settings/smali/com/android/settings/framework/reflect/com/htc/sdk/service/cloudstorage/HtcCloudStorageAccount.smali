.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
.super Ljava/lang/Object;
.source "HtcCloudStorageAccount.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sGetEmailCached:Ljava/lang/Boolean;

.field private static sGetEmailMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetExpiredDateCached:Ljava/lang/Boolean;

.field private static sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetQuotaCached:Ljava/lang/Boolean;

.field private static sGetQuotaMethod:Ljava/lang/ref/SoftReference;
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
.field mCloudStorageAccount:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    .line 22
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    .line 23
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    .line 164
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 42
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 43
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getEmail"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    .line 47
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    .line 50
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 52
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 54
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getEmail"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 61
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 47
    goto :goto_0

    .line 64
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getEmail()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-string v1, "Error"

    goto :goto_1

    .line 67
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getEmail() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getExpiredDate()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 127
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 128
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getExpiredDate"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    .line 132
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    .line 135
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 137
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 139
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getExpiredDate"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 154
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 132
    goto :goto_0

    .line 149
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getExpiredDate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 152
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getExpiredDate() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getQuota()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 86
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuota"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    .line 90
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    .line 93
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 95
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 97
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuota"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 112
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 90
    goto :goto_0

    .line 107
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getQuota()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 110
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getQuota() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
