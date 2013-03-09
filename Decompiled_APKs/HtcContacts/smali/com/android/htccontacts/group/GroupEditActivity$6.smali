.class Lcom/android/htccontacts/group/GroupEditActivity$6;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/group/GroupEditActivity;->setListeners()V
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
    .line 575
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 577
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$500(Lcom/android/htccontacts/group/GroupEditActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-static {}, Lcom/android/htccontacts/util/Vodafone360Util;->is360Enabled()Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/group/GroupEditActivity;->access$600(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.vodafone.people"

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/group/GroupEditActivity;->access$700(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v1, v1, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->show360GroupWarnningDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$800(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->showProgressDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupEditActivity;->access$900(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 588
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    #setter for: Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z
    invoke-static {v1, v4}, Lcom/android/htccontacts/group/GroupEditActivity;->access$502(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z

    .line 589
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$6;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 590
    .local v0, thread:Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;->start()V

    goto :goto_0
.end method
