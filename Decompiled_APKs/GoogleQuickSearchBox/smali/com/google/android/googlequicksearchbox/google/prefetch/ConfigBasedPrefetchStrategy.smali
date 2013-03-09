.class public Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;
.super Ljava/lang/Object;
.source "ConfigBasedPrefetchStrategy.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 0
    .parameter "config"
    .parameter "httpHelper"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 37
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public shouldPrefetchNow()Z
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 43
    .local v0, ni:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 74
    :goto_0
    return v1

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :pswitch_0
    const/4 v1, 0x0

    .local v1, preload:Z
    goto :goto_0

    .line 55
    .end local v1           #preload:Z
    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadWhileRoaming()Z

    move-result v1

    .restart local v1       #preload:Z
    goto :goto_0

    .line 58
    .end local v1           #preload:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadOnMobileNetwork()Z

    move-result v1

    .line 60
    .restart local v1       #preload:Z
    goto :goto_0

    .line 64
    .end local v1           #preload:Z
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/ConfigBasedPrefetchStrategy;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->shouldPreloadOnWifi()Z

    move-result v1

    .line 65
    .restart local v1       #preload:Z
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
