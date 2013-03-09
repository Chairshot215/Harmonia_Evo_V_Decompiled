.class public Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;
.super Ljava/lang/Object;
.source "ConversationGroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ConversationGroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemovedItemContainer"
.end annotation


# instance fields
.field public removedGroupPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/database/ConversationGroupCursor;)V
    .locals 1
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    .line 606
    return-void
.end method

.method private debug()V
    .locals 6

    .prologue
    .line 594
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 596
    .local v2, sizeOfRemoved:I
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 597
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 598
    .local v1, representationForChecking:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    invoke-static {}, Lcom/htc/android/mail/database/ConversationGroupCursor;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    const-string v3, "Remove"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v1           #representationForChecking:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    return-void
.end method


# virtual methods
.method public getRemovedChildCount(I)I
    .locals 4
    .parameter "groupIndex"

    .prologue
    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, returnCount:I
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 512
    .local v0, groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    if-ne v3, p1, :cond_0

    .line 513
    iget-object v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 517
    .end local v0           #groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    return v2
.end method

.method public getTotalRemovedChildCount()I
    .locals 4

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, returnCount:I
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 523
    .local v0, groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-object v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 525
    .end local v0           #groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_0
    return v2
.end method

.method insertRemovedElement(III)V
    .locals 7
    .parameter "groupPosition"
    .parameter "groupCount"
    .parameter "childPosition"

    .prologue
    .line 537
    const/4 v5, 0x0

    .line 538
    .local v5, traversalIdx:I
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 539
    .local v3, removedGroupArraySize:I
    const/4 v1, 0x0

    .line 549
    .local v1, insertionCompleted:Z
    :goto_0
    if-nez v1, :cond_2

    if-ge v5, v3, :cond_2

    .line 550
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 559
    .local v4, representationForChecking:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget v0, v4, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    .line 566
    .local v0, comparingPosition:I
    if-ge v0, p1, :cond_0

    .line 567
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 568
    :cond_0
    if-le v0, p1, :cond_1

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    new-instance v2, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .end local v2           #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-direct {v2, v6, p1, p2, p3}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;-><init>(Lcom/htc/android/mail/database/ConversationGroupCursor;III)V

    .line 571
    .restart local v2       #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 572
    const/4 v1, 0x1

    .line 573
    goto :goto_0

    .line 574
    .end local v2           #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    invoke-virtual {v4, p3}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->insertRemovedChildElement(I)V

    .line 575
    const/4 v1, 0x1

    goto :goto_0

    .line 584
    .end local v0           #comparingPosition:I
    .end local v4           #representationForChecking:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_2
    if-nez v1, :cond_3

    .line 585
    const/4 v2, 0x0

    .line 586
    .restart local v2       #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    new-instance v2, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .end local v2           #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-direct {v2, v6, p1, p2, p3}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;-><init>(Lcom/htc/android/mail/database/ConversationGroupCursor;III)V

    .line 587
    .restart local v2       #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v2           #newGroupElement:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->debug()V

    .line 591
    return-void
.end method

.method public reportActualListViewPosition(I)I
    .locals 4
    .parameter "representedPosition"

    .prologue
    .line 620
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 621
    .local v1, groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-boolean v3, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    if-eqz v3, :cond_0

    .line 622
    iget v0, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    .line 623
    .local v0, a:I
    if-gt v0, p1, :cond_1

    .line 624
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 631
    .end local v0           #a:I
    .end local v1           #groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    return p1
.end method

.method public reportActuralGroupHeadRealPosition(I)I
    .locals 5
    .parameter "actualGroupPosition"

    .prologue
    .line 609
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    iget-object v2, v2, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    iget-object v0, v2, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    .line 610
    .local v0, childPositionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    #calls: Lcom/htc/android/mail/database/ConversationGroupCursor;->getRemoveChildPositionList(I)Ljava/util/ArrayList;
    invoke-static {v2, p1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->access$100(Lcom/htc/android/mail/database/ConversationGroupCursor;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 612
    .local v1, removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/htc/android/mail/database/ConversationGroupCursor;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportActuralGroupHeadRealPosition>childPositionList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportActuralGroupHeadRealPosition>removeChildPostionList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionSkipDeletedItem(ILjava/util/ArrayList;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public reportVirtualListViewPosition(I)I
    .locals 5
    .parameter "groupListPosition"

    .prologue
    .line 635
    move v3, p1

    .line 636
    .local v3, listViewPosition:I
    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 637
    .local v1, groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget-boolean v4, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    if-eqz v4, :cond_0

    .line 638
    iget v0, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    .line 639
    .local v0, a:I
    if-ge v0, p1, :cond_1

    .line 640
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 647
    .end local v0           #a:I
    .end local v1           #groupPicker:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    return v3
.end method
