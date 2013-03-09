.class Lcom/android/mms/ui/AllMessageListActivity$2;
.super Ljava/lang/Object;
.source "AllMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AllMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AllMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$2;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "AllMessageListActivity"

    const-string v1, "Notify content change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$2;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$2;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListAdapter;->onContentChanged()V

    goto :goto_0
.end method
