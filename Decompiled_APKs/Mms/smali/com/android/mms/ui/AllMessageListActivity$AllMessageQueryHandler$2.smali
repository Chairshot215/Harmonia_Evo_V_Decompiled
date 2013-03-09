.class Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->handleMessage_Debug(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

.field final synthetic val$counts:[I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iput-object p2, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;->val$counts:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;->this$1:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler$2;->val$counts:[I

    invoke-static {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts([I)V

    .line 1059
    :cond_0
    return-void
.end method
