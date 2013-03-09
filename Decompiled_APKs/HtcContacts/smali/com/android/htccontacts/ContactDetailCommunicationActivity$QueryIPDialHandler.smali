.class final Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryIPDialHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 476
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 477
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x7da

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$QueryIPDialHandler;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 491
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_2
    return-void
.end method
