.class Lcom/htc/providers/uploads/AutoUploadService$5;
.super Ljava/lang/Object;
.source "AutoUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/AutoUploadService;->startUpload(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/AutoUploadService;

.field final synthetic val$batch:Lcom/htc/opensense/upload/BatchData;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$serviceTitle:Ljava/lang/String;

.field final synthetic val$uploadServiceComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iput-object p2, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$batch:Lcom/htc/opensense/upload/BatchData;

    iput-object p3, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$uploadServiceComponent:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$serviceTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 361
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$batch:Lcom/htc/opensense/upload/BatchData;

    iget-object v2, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$uploadServiceComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$serviceTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->val$batch:Lcom/htc/opensense/upload/BatchData;

    iget-object v5, v5, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/upload/UploadDataHelper;->batchUpload(Landroid/content/Context;Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #setter for: Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z
    invoke-static {v0, v6}, Lcom/htc/providers/uploads/AutoUploadService;->access$602(Lcom/htc/providers/uploads/AutoUploadService;Z)Z

    .line 370
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$5;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    invoke-static {v0}, Lcom/htc/providers/uploads/AutoUploadService;->access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    .line 371
    return-void
.end method
