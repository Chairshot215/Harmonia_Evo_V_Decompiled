.class public Lcom/htc/opensense/social/SocialServiceManager;
.super Ljava/lang/Object;
.source "SocialServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;,
        Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;
    }
.end annotation


# static fields
.field static final DATAINTENT:Ljava/lang/String; = "com.htc.opensense.DATAININTENT"

.field static final DATALISTINTENT:Ljava/lang/String; = "com.htc.opensense.DATALISTINTENT"

.field public static final EXTRAS_ACCOUNTS:Ljava/lang/String; = "om.htc.opensense.social.EXTRAS_ACCOUNTS"

.field public static final LOG_TAG:Ljava/lang/String; = "SocialServiceManager"

.field static final OPINTENT:Ljava/lang/String; = "com.htc.opensense.OPININTENT"

.field static serviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/SocialServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field asyncService:Lcom/htc/opensense/social/AsyncManager;

.field private mAccountType:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

.field private mService:Lcom/htc/opensense/social/ISocialService;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "c"
    .parameter "listener"
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 51
    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    .line 52
    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mAccountType:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    .line 96
    iput-object p1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    const-string v1, "om.htc.opensense.social.EXTRAS_ACCOUNTS"

    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v1, "SocialServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/ISocialService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    return-object v0
.end method

.method public static connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z
    .locals 5
    .parameter "context"
    .parameter "accountType"
    .parameter "featureName"
    .parameter "listener"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, apContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 76
    move-object p0, v0

    .line 80
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;

    move-result-object v1

    .line 82
    .local v1, component:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 83
    new-instance v2, Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v3, v1, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    invoke-direct {v2, p0, p3, v3}, Lcom/htc/opensense/social/SocialServiceManager;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;Landroid/content/ComponentName;)V

    .line 85
    .local v2, connection:Lcom/htc/opensense/social/SocialServiceManager;
    iget-object v3, v1, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/opensense/social/SocialServiceManager;->mAccountType:Ljava/lang/String;

    .line 86
    iget-object v3, v1, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    .line 87
    sget-object v3, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v3, 0x1

    .line 90
    .end local v2           #connection:Lcom/htc/opensense/social/SocialServiceManager;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static disconnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "servicename"

    .prologue
    .line 332
    sget-object v1, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/SocialServiceManager;

    .line 333
    .local v0, connection:Lcom/htc/opensense/social/SocialServiceManager;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    .line 335
    :cond_0
    return-void
.end method

.method private isLogin(Landroid/accounts/Account;Lcom/htc/opensense/social/RemoteError;)Z
    .locals 8
    .parameter "account"
    .parameter "error"

    .prologue
    .line 268
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 269
    .local v6, type:Ljava/lang/String;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 270
    .local v5, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 272
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 273
    .local v0, a:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 274
    const/4 v7, 0x1

    .line 276
    .end local v0           #a:Landroid/accounts/Account;
    :goto_1
    return v7

    .line 272
    .restart local v0       #a:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v0           #a:Landroid/accounts/Account;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected static readDataFromIntent(Landroid/content/Intent;)Landroid/os/Parcelable;
    .locals 1
    .parameter "intent"

    .prologue
    .line 409
    const-string v0, "com.htc.opensense.DATAININTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected static readDataListFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 417
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;
    .locals 2
    .parameter "intent"

    .prologue
    .line 399
    const-string v1, "com.htc.opensense.OPININTENT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ParcelableOp;

    .line 400
    .local v0, service:Lcom/htc/opensense/social/ParcelableOp;
    if-eqz v0, :cond_0

    .line 401
    iget-object v1, v0, Lcom/htc/opensense/social/ParcelableOp;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 402
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeToIntent(Landroid/content/Intent;Lcom/htc/opensense/social/DataOp;)V
    .locals 1
    .parameter "intent"
    .parameter "service"

    .prologue
    .line 357
    const-string v0, "com.htc.opensense.DATAININTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/SocialServiceManager;->writeToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V

    .line 358
    return-void
.end method

.method public static writeToIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/htc/opensense/social/DataOp;)V
    .locals 3
    .parameter "intent"
    .parameter "extraName"
    .parameter "service"

    .prologue
    .line 372
    invoke-virtual {p2}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    const-string v0, "com.htc.opensense.OPININTENT"

    new-instance v1, Lcom/htc/opensense/social/ParcelableOp;

    iget-object v2, p2, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v1, v2}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method public static writeToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "intent"
    .parameter "extraName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/DataOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/DataOp;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 382
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 383
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/DataOp;

    .line 384
    .local v0, data:Lcom/htc/opensense/social/DataOp;
    invoke-virtual {v0}, Lcom/htc/opensense/social/DataOp;->getData()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    .end local v0           #data:Lcom/htc/opensense/social/DataOp;
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 387
    const-string v4, "com.htc.opensense.OPININTENT"

    new-instance v5, Lcom/htc/opensense/social/ParcelableOp;

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/DataOp;

    iget-object v3, v3, Lcom/htc/opensense/social/DataOp;->socialService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v5, v3}, Lcom/htc/opensense/social/ParcelableOp;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    .end local v1           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static writeToIntent(Landroid/content/Intent;Ljava/util/List;)V
    .locals 1
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/DataOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/DataOp;>;"
    const-string v0, "com.htc.opensense.DATALISTINTENT"

    invoke-static {p0, v0, p1}, Lcom/htc/opensense/social/SocialServiceManager;->writeToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 365
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 294
    const-string v0, "SocialServiceManager"

    const-string v1, "binderDied mServiceName=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v0, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    invoke-interface {v0}, Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;->onBinderDied()V

    .line 301
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    const-string v1, "SocialServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onService Disconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v1, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/opensense/social/SocialServiceManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "SocialServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceConnections remain size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/social/SocialServiceManager;->serviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 312
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;

    invoke-virtual {v1}, Lcom/htc/opensense/social/AsyncManager;->disconnect()V

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    .line 320
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    .line 321
    :goto_0
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 323
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "SocialServiceManager"

    const-string v2, "Error when unbind service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    .line 320
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    .line 320
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    .line 321
    iput-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 319
    throw v1
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/social/PersonOp;
    .locals 5
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const/4 v3, 0x0

    .line 153
    :goto_0
    return-object v3

    .line 143
    :cond_0
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 144
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    invoke-direct {p0, p1, v1}, Lcom/htc/opensense/social/SocialServiceManager;->isLogin(Landroid/accounts/Account;Lcom/htc/opensense/social/RemoteError;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, p:Lcom/htc/opensense/social/data/Person;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v3, v1}, Lcom/htc/opensense/social/ISocialService;->getActiveUser(Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 152
    :goto_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 153
    new-instance v3, Lcom/htc/opensense/social/PersonOp;

    iget-object v4, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-direct {v3, v4, v2}, Lcom/htc/opensense/social/PersonOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Person;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 150
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #p:Lcom/htc/opensense/social/data/Person;
    :cond_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->getAuthException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    move-result-object v3

    throw v3
.end method

.method public getAlbumOps([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;
    .locals 2
    .parameter "albums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Album;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, p1, v1}, Lcom/htc/opensense/social/AlbumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumOps([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "aids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :goto_0
    return-object v3

    .line 226
    :cond_0
    new-instance v2, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v2}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 227
    .local v2, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v0, 0x0

    .line 229
    .local v0, albums:[Lcom/htc/opensense/social/data/Album;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v3, p1, v2}, Lcom/htc/opensense/social/ISocialService;->getAlbums([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :goto_1
    invoke-virtual {v2}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 235
    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v0, v4}, Lcom/htc/opensense/social/AlbumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 232
    const-string v3, "SocialServiceManager"

    const-string v4, "get friend error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 2
    .parameter "media"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, p1, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;
    .locals 9
    .parameter "mids"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "III",
            "Lcom/htc/opensense/social/RemoteError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v7, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v7}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 255
    .local v7, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v8, 0x0

    .line 257
    .local v8, media:[Lcom/htc/opensense/social/data/Medium;
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialService;->getMedia([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/MediumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, v8, v1}, Lcom/htc/opensense/social/MediumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v6

    .line 260
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 261
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;
    .locals 2
    .parameter "people"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Person;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v1, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v0, p1, v1}, Lcom/htc/opensense/social/PersonOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonOps([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "uids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    :goto_0
    return-object v3

    .line 170
    :cond_0
    new-instance v1, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v1}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 171
    .local v1, error:Lcom/htc/opensense/social/RemoteError;
    const/4 v2, 0x0

    .line 173
    .local v2, peopleList:[Lcom/htc/opensense/social/data/Person;
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v3, p1, v1}, Lcom/htc/opensense/social/ISocialService;->getPeople([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    :goto_1
    invoke-virtual {v1}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 179
    iget-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v4, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v3, v2, v4}, Lcom/htc/opensense/social/PersonOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 176
    const-string v3, "SocialServiceManager"

    const-string v4, "get friend error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isAlive()Z
    .locals 2

    .prologue
    .line 496
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 498
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    .line 502
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-static {p2}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 107
    const-string v3, "SocialServiceManager"

    const-string v4, "onServiceConnected mService is non-null? %b"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v1}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    const-string v1, "SocialServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mListener:Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;

    invoke-interface {v1, p0}, Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;->onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V

    .line 119
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 107
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SocialServiceManager"

    const-string v2, "binder has already died!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 123
    return-void
.end method

.method public registerCallback(Lcom/htc/opensense/social/IServiceCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/social/AsyncManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/social/IServiceCallback;Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/AsyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->asyncService:Lcom/htc/opensense/social/AsyncManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/AsyncManager;->registerCallback(Lcom/htc/opensense/social/IServiceCallback;)V

    .line 426
    return-void
.end method

.method public requestLogin(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 8
    .parameter "accountType"
    .parameter "activity"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 129
    return-void
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 1
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/htc/opensense/social/SocialServiceManager;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/ISocialService;->supports(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
