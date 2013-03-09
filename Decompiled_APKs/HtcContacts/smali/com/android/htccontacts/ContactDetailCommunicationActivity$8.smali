.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x7f0a03d9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2903
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2904
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ThreadCountUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2905
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    iget v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    if-lez v1, :cond_1

    .line 2906
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v3

    iget v3, v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MESSAGE_UNREAD_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    .line 2911
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v1

    iget v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    if-lez v1, :cond_2

    .line 2912
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
    invoke-static {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    move-result-object v3

    iget v3, v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->MAIL_UNREAD_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    .line 2917
    :cond_0
    :goto_1
    return-void

    .line 2908
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const-string v2, ""

    invoke-virtual {v1, v4, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 2914
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const-string v2, ""

    invoke-virtual {v1, v5, v2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(ILjava/lang/String;)V

    goto :goto_1
.end method
