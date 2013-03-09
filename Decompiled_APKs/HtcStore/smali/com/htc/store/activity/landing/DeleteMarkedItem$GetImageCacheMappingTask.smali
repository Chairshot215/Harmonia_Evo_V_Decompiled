.class Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;
.super Landroid/os/AsyncTask;
.source "DeleteMarkedItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;
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
.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .parameter "params"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItems(I)Ljava/util/HashMap;

    move-result-object v1

    #setter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$402(Lcom/htc/store/activity/landing/DeleteMarkedItem;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$600(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$400(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$600(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->notifyDataSetChanged()V

    .line 293
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 280
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
