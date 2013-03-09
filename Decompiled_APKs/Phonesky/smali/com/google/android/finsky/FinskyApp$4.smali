.class Lcom/google/android/finsky/FinskyApp$4;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$4;->this$0:Lcom/google/android/finsky/FinskyApp;

    iput-object p2, p0, Lcom/google/android/finsky/FinskyApp$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$4;->this$0:Lcom/google/android/finsky/FinskyApp;

    #getter for: Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/google/android/finsky/FinskyApp;->access$200(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/android/volley/toolbox/ClearCacheRequest;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp$4;->this$0:Lcom/google/android/finsky/FinskyApp;

    #getter for: Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;
    invoke-static {v2}, Lcom/google/android/finsky/FinskyApp;->access$100(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/Cache;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 671
    return-void
.end method
