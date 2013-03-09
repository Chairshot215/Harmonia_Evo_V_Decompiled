.class Lcom/htc/providers/uploads/UploadService$1;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/UploadService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadService;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$1;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$1;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->trimDatabase()V
    invoke-static {v0}, Lcom/htc/providers/uploads/UploadService;->access$100(Lcom/htc/providers/uploads/UploadService;)V

    .line 174
    return-void
.end method
