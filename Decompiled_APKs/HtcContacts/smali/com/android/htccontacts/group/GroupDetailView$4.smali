.class Lcom/android/htccontacts/group/GroupDetailView$4;
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
    .line 629
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$000(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$000(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$100(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    const-string v1, "mail"

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->access$202(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/group/GroupDetailView;->access$200(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/group/GroupDetailView;->access$100(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/htccontacts/group/GroupDetailView;->launchHintActivity(Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/group/GroupDetailView;->access$300(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->bIsPause:Z
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$400(Lcom/android/htccontacts/group/GroupDetailView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #calls: Lcom/android/htccontacts/group/GroupDetailView;->sendMail()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$700(Lcom/android/htccontacts/group/GroupDetailView;)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    #getter for: Lcom/android/htccontacts/group/GroupDetailView;->bIsPause:Z
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$400(Lcom/android/htccontacts/group/GroupDetailView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$4;->this$0:Lcom/android/htccontacts/group/GroupDetailView;

    const v1, 0x7f0a0111

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
