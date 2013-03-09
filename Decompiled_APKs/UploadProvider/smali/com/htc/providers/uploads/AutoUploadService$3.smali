.class Lcom/htc/providers/uploads/AutoUploadService$3;
.super Ljava/lang/Object;
.source "AutoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/AutoUploadService;->startDailyUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/AutoUploadService;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/providers/uploads/AutoUploadService$3;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/htc/providers/uploads/AutoUploadService$3;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iget-object v1, v1, Lcom/htc/providers/uploads/AutoUploadService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/providers/uploads/UploadHelper;->getAllAutoUploadItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/htc/providers/uploads/AutoUploadService$3;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #calls: Lcom/htc/providers/uploads/AutoUploadService;->startUpload(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/htc/providers/uploads/AutoUploadService;->access$400(Lcom/htc/providers/uploads/AutoUploadService;Ljava/util/ArrayList;)V

    .line 279
    iget-object v1, p0, Lcom/htc/providers/uploads/AutoUploadService$3;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iget-object v1, v1, Lcom/htc/providers/uploads/AutoUploadService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/providers/uploads/UploadHelper;->removeUploadedItemsInDb(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method
