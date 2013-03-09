.class Lcom/android/htccontacts/group/GroupDetailView$3;
.super Ljava/lang/Object;
.source "GroupDetailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupDetailView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    const/4 v2, 0x0

    #calls: Lcom/android/htccontacts/group/GroupDetailView;->getGroupMessageAddressList(Z)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/htccontacts/group/GroupDetailView;->access$600(Lcom/android/htccontacts/group/GroupDetailView;Z)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->access$002(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->dismissDialog(I)V

    .line 620
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupDetailView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$3;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupDetailView;->mReActionSendGroupMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/android/htccontacts/group/GroupDetailView$QueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    goto :goto_0
.end method
