.class Lcom/google/android/finsky/utils/BitmapLoader$1$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader$1;->create()Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/BitmapLoader$1;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$2;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    iget-object v1, v1, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$cacheKey:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->access$200(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 303
    return-void
.end method
