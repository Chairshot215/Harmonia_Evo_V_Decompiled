.class Lcom/android/htccontacts/group/GroupEditActivity$2;
.super Landroid/os/Handler;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$2;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$2;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$300(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0277

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$2;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 328
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 329
    return-void

    .line 324
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$2;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 326
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$2;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    goto :goto_0
.end method
