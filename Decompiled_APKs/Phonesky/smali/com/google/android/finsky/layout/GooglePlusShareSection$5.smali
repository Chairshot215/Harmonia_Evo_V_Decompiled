.class Lcom/google/android/finsky/layout/GooglePlusShareSection$5;
.super Ljava/lang/Object;
.source "GooglePlusShareSection.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #setter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z
    invoke-static {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$002(Lcom/google/android/finsky/layout/GooglePlusShareSection;Z)Z

    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateUi()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    .line 264
    const-string v0, "Unable to load JSON: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void
.end method
