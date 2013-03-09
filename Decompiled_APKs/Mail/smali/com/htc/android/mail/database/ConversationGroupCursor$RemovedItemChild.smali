.class public Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
.super Ljava/lang/Object;
.source "ConversationGroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ConversationGroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemovedItemChild"
.end annotation


# instance fields
.field allElementsRemoved:Z

.field originalGroupSize:I

.field removedChildPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field removedGroupPosition:I

.field final synthetic this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/database/ConversationGroupCursor;III)V
    .locals 3
    .parameter
    .parameter "groupPosition"
    .parameter "groupCount"
    .parameter "firstDeletedPosition"

    .prologue
    const/4 v2, 0x1

    .line 705
    iput-object p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput p2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    .line 708
    iput p3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->originalGroupSize:I

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    .line 710
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    if-ne p3, v2, :cond_0

    .line 712
    iput-boolean v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    .line 713
    iget v0, p1, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public insertRemovedChildElement(I)V
    .locals 5
    .parameter "insertedChildElementPosition"

    .prologue
    .line 677
    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->originalGroupSize:I

    if-ge p1, v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    if-nez v3, :cond_4

    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, insertionCompleted:Z
    const/4 v0, 0x0

    .line 680
    .local v0, i:I
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 682
    .local v2, removedArraySize:I
    :goto_0
    if-nez v1, :cond_2

    if-ge v0, v2, :cond_2

    .line 683
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 686
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 687
    const/4 v1, 0x1

    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 692
    :cond_2
    if-nez v1, :cond_3

    .line 693
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->originalGroupSize:I

    if-ne v3, v4, :cond_4

    .line 698
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    .line 699
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->this$0:Lcom/htc/android/mail/database/ConversationGroupCursor;

    iget v4, v3, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    .line 702
    .end local v0           #i:I
    .end local v1           #insertionCompleted:Z
    .end local v2           #removedArraySize:I
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 721
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 722
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "\nremovedGroupPosition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 723
    const-string v3, " originalGroupSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->originalGroupSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 724
    const-string v3, " allElementsRemoved("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->allElementsRemoved:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    const-string v3, "\nremovedChildPositionList ==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 726
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 727
    .local v1, position:Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 728
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 730
    .end local v1           #position:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
