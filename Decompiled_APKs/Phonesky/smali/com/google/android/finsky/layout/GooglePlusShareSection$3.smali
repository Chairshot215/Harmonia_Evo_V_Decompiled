.class Lcom/google/android/finsky/layout/GooglePlusShareSection$3;
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
    .line 233
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 236
    const-string v0, "Unable to load child documents: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$900(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$1000(Lcom/google/android/finsky/layout/GooglePlusShareSection;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 238
    return-void
.end method
