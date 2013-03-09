.class Lcom/android/mms/ui/ComposeMessageActivity$81$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$81;->onMediaPicked(Lcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$81;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$81;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14472
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$81;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 14474
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->val$media:Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_0

    .line 14475
    const-string v1, "ComposeMessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaPicked:media: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14476
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$81;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14477
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$81;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14479
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
