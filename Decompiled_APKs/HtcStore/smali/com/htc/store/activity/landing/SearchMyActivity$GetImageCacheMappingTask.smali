.class Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;
.super Landroid/os/AsyncTask;
.source "SearchMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/SearchMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImageCacheMappingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/SearchMyActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/SearchMyActivity;Lcom/htc/store/activity/landing/SearchMyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$400(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v1

    #setter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$702(Lcom/htc/store/activity/landing/SearchMyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$800(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$700(Lcom/htc/store/activity/landing/SearchMyActivity;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$800(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$700(Lcom/htc/store/activity/landing/SearchMyActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setImageCacheMapping(Ljava/util/HashMap;)V

    .line 229
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/SearchMyActivity;

    #getter for: Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->access$800(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
