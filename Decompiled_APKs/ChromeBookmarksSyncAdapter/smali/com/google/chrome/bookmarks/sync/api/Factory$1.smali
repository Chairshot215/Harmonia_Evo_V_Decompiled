.class Lcom/google/chrome/bookmarks/sync/api/Factory$1;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Lcom/google/chrome/bookmarks/sync/api/impl/ChromeSyncClientImpl$HttpClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/chrome/bookmarks/sync/api/Factory;->createSyncClient(Landroid/content/Context;ILjava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/chrome/bookmarks/sync/api/Factory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/chrome/bookmarks/sync/api/Factory;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/chrome/bookmarks/sync/api/Factory$1;->this$0:Lcom/google/chrome/bookmarks/sync/api/Factory;

    iput-object p2, p0, Lcom/google/chrome/bookmarks/sync/api/Factory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewHttpClient()Lcom/google/android/common/http/GoogleHttpClient;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/chrome/bookmarks/sync/api/Factory$1;->val$context:Landroid/content/Context;

    const-string v2, "android-bookmarks-sync/1.0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
