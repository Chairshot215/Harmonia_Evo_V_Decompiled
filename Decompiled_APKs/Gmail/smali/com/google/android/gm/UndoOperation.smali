.class public Lcom/google/android/gm/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mConversations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;

.field public final mOperations:Lcom/google/android/gm/LabelOperations;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter
    .parameter "operations"
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V
    .locals 0
    .parameter "account"
    .parameter
    .parameter "operations"
    .parameter "description"
    .parameter "undoAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    .line 44
    if-eqz p5, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gm/LabelOperations;->undoOperation()Lcom/google/android/gm/LabelOperations;

    move-result-object p3

    .end local p3
    :cond_0
    iput-object p3, p0, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    .line 45
    iput-object p2, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    .line 46
    iput-object p4, p0, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private static decodeConversations(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 7
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const-string v6, "undo-conversations"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 160
    .local v4, parcelled:[Landroid/os/Parcelable;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ConversationInfo;>;"
    move-object v0, v4

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 162
    .local v3, parcel:Landroid/os/Parcelable;
    check-cast v3, Lcom/google/android/gm/ConversationInfo;

    .end local v3           #parcel:Landroid/os/Parcelable;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-object v5
.end method

.method public static getActionDescription(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v13

    .line 66
    .local v13, isTrash:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v12

    .line 67
    .local v12, isSpam:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v11

    .line 68
    .local v11, isMute:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyArchive()Z

    move-result v7

    .line 69
    .local v7, isArchive:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMarkImportant()Z

    move-result v8

    .line 70
    .local v8, isMarkImportant:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMarkNotImportant()Z

    move-result v9

    .line 71
    .local v9, isMarkNotImportant:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v5

    .line 72
    .local v5, isApplyRead:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v6

    .line 73
    .local v6, isApplyUnread:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->hasMoveToInbox()Z

    move-result v10

    .line 75
    .local v10, isMoveToInbox:Z
    const/4 v4, -0x1

    .line 76
    .local v4, id:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 77
    .local v2, count:I
    const/4 v15, 0x1

    if-le v2, v15, :cond_1

    .line 78
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v14, uniqueIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 80
    .local v1, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v1           #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 85
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v14           #uniqueIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    if-eqz v13, :cond_3

    .line 86
    const v4, 0x7f100011

    .line 110
    :cond_2
    :goto_1
    const v15, 0x7f100016

    if-ne v4, v15, :cond_c

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 116
    :goto_2
    return-object v15

    .line 87
    :cond_3
    if-eqz v12, :cond_4

    .line 88
    const v4, 0x7f10000e

    goto :goto_1

    .line 89
    :cond_4
    if-eqz v11, :cond_5

    .line 90
    const v4, 0x7f10000d

    goto :goto_1

    .line 91
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 94
    const v4, 0x7f10000f

    goto :goto_1

    .line 95
    :cond_6
    if-eqz v8, :cond_7

    .line 96
    const v4, 0x7f100012

    goto :goto_1

    .line 97
    :cond_7
    if-eqz v9, :cond_8

    .line 98
    const v4, 0x7f100013

    goto :goto_1

    .line 99
    :cond_8
    if-eqz v5, :cond_9

    .line 100
    const v4, 0x7f100014

    goto :goto_1

    .line 101
    :cond_9
    if-eqz v6, :cond_a

    .line 102
    const v4, 0x7f100015

    goto :goto_1

    .line 103
    :cond_a
    if-eqz v10, :cond_b

    .line 104
    const v4, 0x7f100010

    goto :goto_1

    .line 105
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result v15

    if-lez v15, :cond_2

    .line 106
    const v4, 0x7f100016

    goto :goto_1

    .line 112
    :cond_c
    const/4 v15, -0x1

    if-eq v4, v15, :cond_d

    .line 113
    move-object/from16 v0, p0

    invoke-static {v0, v4, v2}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 116
    :cond_d
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static restoreFromExtras(Landroid/os/Bundle;)Lcom/google/android/gm/UndoOperation;
    .locals 7
    .parameter "extras"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, result:Lcom/google/android/gm/UndoOperation;
    if-eqz p0, :cond_0

    .line 143
    const-string v2, "undo-account"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, account:Ljava/lang/String;
    const-string v2, "undo-operations"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, labelOperations:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Lcom/google/android/gm/UndoOperation;

    .end local v0           #result:Lcom/google/android/gm/UndoOperation;
    invoke-static {p0}, Lcom/google/android/gm/UndoOperation;->decodeConversations(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v6}, Lcom/google/android/gm/LabelOperations;->deserialize(Ljava/lang/String;)Lcom/google/android/gm/LabelOperations;

    move-result-object v3

    const-string v4, "undo-description"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;Z)V

    .line 152
    .end local v1           #account:Ljava/lang/String;
    .end local v6           #labelOperations:Ljava/lang/String;
    .restart local v0       #result:Lcom/google/android/gm/UndoOperation;
    :cond_0
    return-object v0
.end method

.method public static shouldResetUndoState(Lcom/google/android/gm/LabelOperations;)Z
    .locals 2
    .parameter "operations"

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public saveToExtras(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 53
    const-string v0, "undo-account"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "undo-operations"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    invoke-static {v1}, Lcom/google/android/gm/LabelOperations;->serialize(Lcom/google/android/gm/LabelOperations;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "undo-description"

    iget-object v1, p0, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "undo-conversations"

    iget-object v0, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 58
    return-void
.end method
