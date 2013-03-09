.class Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;
.super Landroid/os/AsyncTask;
.source "DeleteMarkedItemsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMarkedItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mContext:Landroid/content/Context;

.field private mDeleteFailAmount:I

.field private mIndex:J

.field private mMarkedId:Ljava/lang/String;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field private mRestResult:Lcom/htc/store/module/rest/RestResult;

.field final synthetic this$0:Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "markedId"
    .parameter "index"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->this$0:Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Lcom/htc/store/module/rest/RestHelper;

    invoke-direct {v0, p2}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 45
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v0, p2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 46
    iput-object p3, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mMarkedId:Ljava/lang/String;

    .line 47
    iput-wide p4, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mIndex:J

    .line 48
    iput-object p2, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mDeleteFailAmount:I

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    .line 54
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mMarkedId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "doInBackground: DeleteMarkedItem"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mMarkedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1, v0}, Lcom/htc/store/module/rest/RestHelper;->deleteMarkedItemsList(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestResult:Lcom/htc/store/module/rest/RestResult;

    .line 59
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestResult:Lcom/htc/store/module/rest/RestResult;

    iget v1, v1, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestResult:Lcom/htc/store/module/rest/RestResult;

    iget-object v1, v1, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    iget-wide v2, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mIndex:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityItemById(J)I

    .line 72
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 65
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iput v5, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mDeleteFailAmount:I

    goto :goto_0

    .line 69
    :cond_2
    iput v5, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mDeleteFailAmount:I

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 77
    iget v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mDeleteFailAmount:I

    if-lez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0012

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method
