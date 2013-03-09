.class Lcom/google/android/finsky/utils/BitmapLoader$1$1;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/BitmapLoader$1;->create()Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader$1;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$1;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$1;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    iget-object v0, v0, Lcom/google/android/finsky/utils/BitmapLoader$1;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader$1$1;->this$1:Lcom/google/android/finsky/utils/BitmapLoader$1;

    iget-object v1, v1, Lcom/google/android/finsky/utils/BitmapLoader$1;->val$cacheKey:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->access$100(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 298
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 294
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/BitmapLoader$1$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
