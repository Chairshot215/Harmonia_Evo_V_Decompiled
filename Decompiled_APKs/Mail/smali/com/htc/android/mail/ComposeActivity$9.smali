.class Lcom/htc/android/mail/ComposeActivity$9;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->showRecipientMenu(Lcom/htc/android/mail/ReceiverList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$fRecipient:Lcom/htc/android/mail/ReceiverList;

.field final synthetic val$group:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ReceiverList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iput p3, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1506
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v1, v1, Lcom/htc/android/mail/ReceiverList;->typeId:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-boolean v1, v1, Lcom/htc/android/mail/ReceiverList;->canAddToGroup:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v1, v1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    cmp-long v1, v1, v7

    if-ltz v1, :cond_3

    .line 1507
    packed-switch p2, :pswitch_data_0

    .line 1654
    :cond_1
    :goto_0
    return-void

    .line 1509
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->removeRecipientEvent()V

    goto :goto_0

    .line 1512
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v3, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1514
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1515
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1516
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v2, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v2}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Mailaddress;)Lcom/htc/android/mail/Mailaddress;

    .line 1517
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1518
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1519
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->getModeToCcBccByAddress(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setModeToCcBcc(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 1520
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doAddSinglecontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1521
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->isDirtyContact(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1522
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDirtyContact:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$2200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1526
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v6}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto :goto_0

    .line 1529
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto/16 :goto_0

    .line 1532
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v1, v1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    cmp-long v1, v1, v7

    if-ltz v1, :cond_6

    .line 1533
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 1536
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->removeRecipientEvent()V

    goto/16 :goto_0

    .line 1539
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v3, v3, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1541
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1544
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1545
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v2, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v2}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Mailaddress;)Lcom/htc/android/mail/Mailaddress;

    .line 1546
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1547
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1548
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->getModeToCcBccByAddress(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setModeToCcBcc(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 1549
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doAddSinglecontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1550
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->isDirtyContact(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1551
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDirtyContact:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$2200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1557
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v2, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    #calls: Lcom/htc/android/mail/ComposeActivity;->editContactGroup(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$2400(Lcom/htc/android/mail/ComposeActivity;J)V

    .line 1561
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1562
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v2, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v2}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Mailaddress;)Lcom/htc/android/mail/Mailaddress;

    .line 1563
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1564
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1565
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->getModeToCcBccByAddress(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setModeToCcBcc(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 1566
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doAddSinglecontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1567
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->isDirtyContact(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDirtyContact:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$2200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1588
    :pswitch_7
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v6}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto/16 :goto_0

    .line 1591
    :pswitch_8
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto/16 :goto_0

    .line 1596
    :cond_6
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 1599
    :pswitch_9
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->removeRecipientEvent()V

    goto/16 :goto_0

    .line 1602
    :pswitch_a
    new-instance v1, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v3, v3, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v4, v4, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;-><init>(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1605
    :pswitch_b
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1200(Lcom/htc/android/mail/ComposeActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->addrToAdd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailCommon;->pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V

    .line 1609
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1610
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v2, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v2}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Mailaddress;)Lcom/htc/android/mail/Mailaddress;

    .line 1611
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1612
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1613
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->getModeToCcBccByAddress(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setModeToCcBcc(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 1614
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doAddSinglecontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1615
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->isDirtyContact(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDirtyContact:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$2200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1631
    :pswitch_c
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-wide v2, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    #calls: Lcom/htc/android/mail/ComposeActivity;->editContactGroup(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$2400(Lcom/htc/android/mail/ComposeActivity;J)V

    .line 1634
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1635
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v2, Lcom/htc/android/mail/Mailaddress;

    invoke-direct {v2}, Lcom/htc/android/mail/Mailaddress;-><init>()V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1802(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Mailaddress;)Lcom/htc/android/mail/Mailaddress;

    .line 1636
    :cond_8
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    .line 1637
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1638
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromContact:Lcom/htc/android/mail/Mailaddress;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$1800(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Mailaddress;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->getModeToCcBccByAddress(Ljava/lang/String;)I

    move-result v2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setModeToCcBcc(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1900(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 1639
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->doAddSinglecontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 1640
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ComposeActivity;->isDirtyContact(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1641
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDirtyContact:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$2200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$fRecipient:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1646
    :pswitch_d
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v6}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto/16 :goto_0

    .line 1649
    :pswitch_e
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$9;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v2, p0, Lcom/htc/android/mail/ComposeActivity$9;->val$group:I

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v1, v2, v5}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto/16 :goto_0

    .line 1507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1533
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1596
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
