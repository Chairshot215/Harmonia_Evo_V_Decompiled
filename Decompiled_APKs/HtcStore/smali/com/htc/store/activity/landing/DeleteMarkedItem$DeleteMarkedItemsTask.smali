.class Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;
.super Landroid/os/AsyncTask;
.source "DeleteMarkedItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMarkedItemsTask"
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
.field private mResult:Lcom/htc/store/module/rest/RestResult;

.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 297
    new-instance v0, Lcom/htc/store/module/rest/RestResult;

    invoke-direct {v0}, Lcom/htc/store/module/rest/RestResult;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->mResult:Lcom/htc/store/module/rest/RestResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    .line 300
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$700(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    new-instance v5, Lcom/htc/store/module/rest/RestHelper;

    iget-object v6, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->getContext()Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$800(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4, v5}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$702(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->getMarkedItemList()V
    invoke-static {v4}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$900(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    .line 311
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemMarkedIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, mSelectedMarkedItemMarkedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v4}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$700(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/store/module/rest/RestHelper;->deleteMarkedItemsList(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->mResult:Lcom/htc/store/module/rest/RestResult;

    .line 315
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->mResult:Lcom/htc/store/module/rest/RestResult;

    iget v4, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 317
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->mResult:Lcom/htc/store/module/rest/RestResult;

    iget-object v3, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 318
    .local v3, successIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 320
    .local v1, ori:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 321
    .local v2, suc:I
    invoke-static {}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1100()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedMarkedItemMarkedIds.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  successIds.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    sub-int v5, v1, v2

    #setter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I
    invoke-static {v4, v5}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1202(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)I

    .line 323
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 324
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v4}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemsByOnlilneMarkedIds(Ljava/util/ArrayList;)I

    .line 331
    .end local v1           #ori:I
    .end local v2           #suc:I
    .end local v3           #successIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->mResult:Lcom/htc/store/module/rest/RestResult;

    iget v4, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 326
    .restart local v3       #successIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    #setter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I
    invoke-static {v4, v5}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1202(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)I

    goto :goto_0

    .line 329
    .end local v3           #successIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    #setter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I
    invoke-static {v4, v5}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1202(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "resultCode"

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1300(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$600(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->notifyDataSetChanged()V

    .line 339
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->showDialog(I)V

    .line 351
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1200(Lcom/htc/store/activity/landing/DeleteMarkedItem;)I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->finish()V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #getter for: Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$600(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->notifyDataSetChanged()V

    .line 348
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->showDialog(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 296
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
