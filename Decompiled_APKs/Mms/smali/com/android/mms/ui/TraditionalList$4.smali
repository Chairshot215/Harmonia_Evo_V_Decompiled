.class Lcom/android/mms/ui/TraditionalList$4;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 569
    const v5, 0x7f090036

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 571
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v5, v5, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 572
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 574
    :cond_0
    const-string v5, "TraditionalList"

    const-string v6, "Create context menu failed. Invalid cursor position!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 578
    :cond_2
    new-instance v0, Lcom/android/mms/msg/util/MessageDataAdapter;

    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v5}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 579
    .local v0, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v5, v5, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 580
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v3, :cond_3

    .line 582
    const-string v5, "TraditionalList"

    const-string v6, "Cannot load message item!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget v5, v5, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v6, 0x67

    if-ne v5, v6, :cond_4

    .line 588
    const/16 v5, 0x46

    const v6, 0x7f090301

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 589
    const v5, 0x20c01fc

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 593
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isDrafts()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 595
    const/16 v5, 0x47

    const v6, 0x7f09006d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 602
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 604
    const/16 v5, 0x48

    const v6, 0x7f0900ca

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 607
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 609
    const/4 v5, 0x2

    const v6, 0x7f09010d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 612
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v5

    if-nez v5, :cond_7

    .line 614
    const/4 v5, 0x3

    const v6, 0x7f09002f

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 617
    :cond_7
    const/16 v5, 0x49

    const v6, 0x7f090024

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 619
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v5

    if-nez v5, :cond_8

    .line 621
    const v5, 0x7f090333

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 624
    :cond_8
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    invoke-static {v5, p1, v1}, Lcom/android/mms/ui/TraditionalList;->access$500(Lcom/android/mms/ui/TraditionalList;Landroid/view/ContextMenu;Ljava/lang/String;)V

    .line 627
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->isInSentbox(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v5, v3}, Lcom/android/mms/ui/TraditionalList;->access$600(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->isReportRequired(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v5, v3}, Lcom/android/mms/ui/TraditionalList;->access$700(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 629
    const/16 v5, 0x4a

    const v6, 0x7f090025

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 632
    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getIndexOnSim()I

    move-result v4

    .line 633
    .local v4, nIndexonSim:I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 635
    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v5

    if-nez v5, :cond_c

    .line 637
    const/16 v5, 0x4b

    const v6, 0x7f0901fd

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 645
    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget v5, v5, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$4;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v5}, Lcom/android/mms/ui/TraditionalList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isShowSaveasTask(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 647
    const/16 v5, 0x4d

    const v6, 0x7f0903bc

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 599
    .end local v1           #address:Ljava/lang/String;
    .end local v4           #nIndexonSim:I
    :cond_b
    const/4 v5, 0x1

    const v6, 0x20c01f4

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 641
    .restart local v1       #address:Ljava/lang/String;
    .restart local v4       #nIndexonSim:I
    :cond_c
    const/16 v5, 0x4c

    const v6, 0x7f0901fe

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method
