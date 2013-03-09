.class public Landroid/test/mock/MockContentResolver;
.super Landroid/content/ContentResolver;
.source "MockContentResolver.java"


# instance fields
.field mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 2

    iget-object v1, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/test/mock/MockContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V
    .locals 1

    iget-object v0, p0, Landroid/test/mock/MockContentResolver;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 0

    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
