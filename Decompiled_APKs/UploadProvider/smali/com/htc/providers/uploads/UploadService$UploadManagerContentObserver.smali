.class Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;
.super Landroid/database/ContentObserver;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadManagerContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadService;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;->this$0:Lcom/htc/providers/uploads/UploadService;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 127
    const-string v0, "UploadService"

    const-string v1, "Service ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/htc/providers/uploads/UploadService;->access$000(Lcom/htc/providers/uploads/UploadService;)V

    .line 129
    return-void
.end method
