.class Lcom/htc/providers/uploads/AutoUploadService$1;
.super Ljava/lang/Object;
.source "AutoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/AutoUploadService;->saveIntentContentToDb(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/AutoUploadService;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iput-object p2, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 232
    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/AutoUploadItem;

    .line 233
    .local v1, item:Lcom/htc/providers/uploads/AutoUploadItem;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "frequency"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->frequency:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v4, "service_title"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->serviceTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v4, "service_pkg"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServicePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v4, "service_class"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServiceClass:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v4, "album_id"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumId:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "album_name"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "privacy"

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v3, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumPrivacy:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "uri"

    iget-object v4, v1, Lcom/htc/providers/uploads/AutoUploadItem;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-virtual {v3}, Lcom/htc/providers/uploads/AutoUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 245
    .end local v1           #item:Lcom/htc/providers/uploads/AutoUploadItem;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #setter for: Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z
    invoke-static {v3, v5}, Lcom/htc/providers/uploads/AutoUploadService;->access$102(Lcom/htc/providers/uploads/AutoUploadService;Z)Z

    .line 246
    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I
    invoke-static {v3}, Lcom/htc/providers/uploads/AutoUploadService;->access$200(Lcom/htc/providers/uploads/AutoUploadService;)I

    move-result v3

    if-lez v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$1;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    invoke-static {v3}, Lcom/htc/providers/uploads/AutoUploadService;->access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    .line 249
    :cond_1
    return-void
.end method
