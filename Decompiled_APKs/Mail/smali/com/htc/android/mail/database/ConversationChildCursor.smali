.class public Lcom/htc/android/mail/database/ConversationChildCursor;
.super Lcom/htc/android/mail/database/AbstractMailCursor;
.source "ConversationChildCursor.java"

# interfaces
.implements Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConversationChildCursor"


# instance fields
.field private mChildCursorPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupPosition:I

.field private mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/ConversationChildCursor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/util/ArrayList;Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;)V
    .locals 0
    .parameter "cursor"
    .parameter "groupPosition"
    .parameter
    .parameter "removedItemRepresentation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, childCursorPositionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/htc/android/mail/database/AbstractMailCursor;-><init>(Landroid/database/Cursor;)V

    .line 30
    iput-object p3, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mChildCursorPositionList:Ljava/util/ArrayList;

    .line 31
    iput-object p4, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    .line 32
    iput p2, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mGroupPosition:I

    .line 33
    return-void
.end method

.method private getRemoveChildPositionList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v3, v3, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 73
    .local v2, sizeOfRemoveGroupList:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v3, v3, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 75
    .local v0, child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    iget v4, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mGroupPosition:I

    if-ne v3, v4, :cond_0

    .line 76
    iget-object v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    .line 79
    .end local v0           #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :goto_1
    return-object v3

    .line 73
    .restart local v0       #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0           #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public delete(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 117
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget v2, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mGroupPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->getRemovedChildCount(I)I

    move-result v0

    .line 38
    .local v0, removeCnt:I
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mChildCursorPositionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 44
    invoke-virtual {p0}, Lcom/htc/android/mail/database/ConversationChildCursor;->getCount()I

    move-result v0

    .line 46
    .local v0, count:I
    if-lt p1, v0, :cond_1

    .line 47
    iput v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    if-gez p1, :cond_2

    .line 53
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 57
    :cond_2
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/mail/database/ConversationChildCursor;->onMove(II)Z

    move-result v1

    .line 59
    .local v1, result:Z
    if-nez v1, :cond_3

    .line 60
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 62
    :cond_3
    iput p1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 63
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 64
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/database/ConversationChildCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public onChildElementDeleteListener(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/ConversationChildCursor;->delete(J)V

    .line 172
    return-void
.end method

.method public onMove(II)Z
    .locals 10
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 84
    sget-boolean v2, Lcom/htc/android/mail/database/ConversationChildCursor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "ConversationChildCursor"

    const-string v4, "----------------------------------------"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "ConversationChildCursor"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "onMove (old,new)=(%2d,%2d)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 91
    invoke-direct {p0}, Lcom/htc/android/mail/database/ConversationChildCursor;->getRemoveChildPositionList()Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    .local v1, removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-static {p2, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getPositionSkipDeletedItem(ILjava/util/ArrayList;)I

    move-result p2

    .line 102
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationChildCursor;->mChildCursorPositionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    .local v0, actualCursorPosition:I
    sget-boolean v2, Lcom/htc/android/mail/database/ConversationChildCursor;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 104
    const-string v2, "ConversationChildCursor"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "onMove (old,new)=(%2d,%2d) actual=%2d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 109
    .end local v0           #actualCursorPosition:I
    .end local v1           #removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    return v2

    .line 95
    .restart local v1       #removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    if-nez v1, :cond_4

    .line 96
    const-string v2, "ConversationChildCursor"

    const-string v4, "removeChildPostionList is null"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 98
    const-string v2, "ConversationChildCursor"

    const-string v4, "removeChildPostionList.size is 0"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move v2, v3

    .line 109
    goto :goto_1
.end method

.method public prepareIdToPosMap()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 149
    return-void
.end method

.method public setMessageStatusDelete(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 0
    .parameter "messageStatus"

    .prologue
    .line 122
    return-void
.end method

.method public setMessageStatusRead(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 0
    .parameter "messageStatus"

    .prologue
    .line 127
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 154
    return-void
.end method
