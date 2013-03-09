.class Landroid/webkit/CookieManager$2;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeSessionCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v6, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    #getter for: Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;
    invoke-static {v5}, Landroid/webkit/CookieManager;->access$300(Landroid/webkit/CookieManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    iget-wide v7, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->clearSessionCookies()V

    iget-object v5, p0, Landroid/webkit/CookieManager$2;->this$0:Landroid/webkit/CookieManager;

    #calls: Landroid/webkit/CookieManager;->signalCookieOperationsComplete()V
    invoke-static {v5}, Landroid/webkit/CookieManager;->access$200(Landroid/webkit/CookieManager;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
