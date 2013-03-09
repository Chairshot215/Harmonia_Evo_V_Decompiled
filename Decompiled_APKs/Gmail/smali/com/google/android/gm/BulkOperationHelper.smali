.class public Lcom/google/android/gm/BulkOperationHelper;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;,
        Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    }
.end annotation


# static fields
.field private static sBulkOperationHandler:Landroid/os/Handler;

.field private static sServiceIntent:Landroid/content/Intent;


# instance fields
.field private mActivityAttached:Z

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mInfo:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelOperations:Lcom/google/android/gm/LabelOperations;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

.field private volatile mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    .line 56
    sput-object v0, Lcom/google/android/gm/BulkOperationHelper;->sServiceIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/Gmail;)V
    .locals 1
    .parameter "menuHandler"
    .parameter "gmail"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->IDLE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 70
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 71
    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gm/BulkOperationHelper;->performYButtonActionInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/BulkOperationHelper;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/BulkOperationHelper$ThreadState;)Lcom/google/android/gm/BulkOperationHelper$ThreadState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/BulkOperationHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    return v0
.end method

.method private addOrRemoveLabelInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLjava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 32
    .parameter "context"
    .parameter "account"
    .parameter "labelOperations"
    .parameter
    .parameter "done"
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const-string v4, "BOH_addOrRemoveLabel"

    invoke-static {v4}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 105
    .local v15, conversationInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 107
    .local v24, messageInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/LabelOperations;->getOperationList()Ljava/util/List;

    move-result-object v27

    .line 110
    .local v27, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/LabelOperations$Operation;>;"
    if-eqz p7, :cond_0

    .line 111
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gm/LabelOperations;->getOperationList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gm/ConversationInfo;

    .line 114
    .local v12, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v12}, Lcom/google/android/gm/ConversationInfo;->getLocalMessageId()J

    move-result-wide v21

    .line 115
    .local v21, localMessageId:J
    invoke-virtual {v12}, Lcom/google/android/gm/ConversationInfo;->getServerMessageId()J

    move-result-wide v29

    .line 116
    .local v29, serverMessageId:J
    invoke-virtual {v12}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v13

    .line 118
    .local v13, conversationId:J
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v25

    .line 119
    .local v25, numOperations:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 120
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/LabelOperations$Operation;

    iget-object v0, v4, Lcom/google/android/gm/LabelOperations$Operation;->mLabel:Lcom/google/android/gm/provider/Label;

    move-object/from16 v19, v0

    .line 122
    .local v19, label:Lcom/google/android/gm/provider/Label;
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/LabelOperations$Operation;

    iget-boolean v4, v4, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1, v4}, Lcom/google/android/gm/BulkOperationHelper;->getRawOperations(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Z)Ljava/util/Map;

    move-result-object v28

    .line 124
    .local v28, rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v26

    .line 125
    .local v26, numRawOperations:I
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, v26

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .line 126
    .local v20, labelList:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, j:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 127
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v23, map:Landroid/content/ContentValues;
    aget-object v11, v20, v18

    .line 130
    .local v11, canonicalName:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 132
    .local v10, add:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v21, v4

    if-eqz v4, :cond_2

    .line 133
    const-string v4, "canonicalName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v4, "messageId"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v4, "conversation"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v4, "add_label_action"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 140
    :cond_2
    const-string v4, "_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v4, "canonicalName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v4, "maxMessageId"

    invoke-virtual {v12}, Lcom/google/android/gm/ConversationInfo;->getMaxMessageId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v4, "add_label_action"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    .end local v10           #add:Z
    .end local v11           #canonicalName:Ljava/lang/String;
    .end local v23           #map:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    if-eqz v4, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/LabelOperations$Operation;

    iget-boolean v4, v4, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    move-object/from16 v0, v19

    invoke-virtual {v5, v13, v14, v4, v0}, Lcom/google/android/gm/MenuHandler;->sendLabelChangedMessage(JZLcom/google/android/gm/provider/Label;)V

    .line 157
    :cond_4
    const-string v4, "^^out"

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "^k"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/LabelOperations$Operation;

    iget-boolean v4, v4, Lcom/google/android/gm/LabelOperations$Operation;->mAdd:Z

    if-eqz v4, :cond_5

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0, v13, v14}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 119
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 167
    .end local v12           #ci:Lcom/google/android/gm/ConversationInfo;
    .end local v13           #conversationId:J
    .end local v16           #i:I
    .end local v18           #j:I
    .end local v19           #label:Lcom/google/android/gm/provider/Label;
    .end local v20           #labelList:[Ljava/lang/String;
    .end local v21           #localMessageId:J
    .end local v25           #numOperations:I
    .end local v26           #numRawOperations:I
    .end local v28           #rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v29           #serverMessageId:J
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v4}, Lcom/google/android/gm/provider/Gmail;->addOrRemoveLabelOnConversationBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V

    .line 171
    :cond_7
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v4}, Lcom/google/android/gm/provider/Gmail;->addOrRemoveLabelOnMessageBulk(Ljava/lang/String;[Landroid/content/ContentValues;)V

    .line 177
    :cond_8
    if-eqz p5, :cond_a

    .line 179
    if-eqz p9, :cond_9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    .line 180
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gm/BulkOperationHelper;->createUndoOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Lcom/google/android/gm/UndoOperation;

    move-result-object v31

    .line 182
    .local v31, undoOp:Lcom/google/android/gm/UndoOperation;
    move-object/from16 v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V

    .line 184
    .end local v31           #undoOp:Lcom/google/android/gm/UndoOperation;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    if-eqz v4, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    .line 188
    :cond_a
    const-string v4, "BOH_addOrRemoveLabel"

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method private createUndoOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Lcom/google/android/gm/UndoOperation;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "labelOperations"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gm/UndoOperation;"
        }
    .end annotation

    .prologue
    .line 627
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {p1, p3, p4, p5}, Lcom/google/android/gm/UndoOperation;->getActionDescription(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, description:Ljava/lang/String;
    const/4 v1, 0x0

    .line 631
    .local v1, result:Lcom/google/android/gm/UndoOperation;
    if-eqz v0, :cond_1

    .line 636
    new-instance v1, Lcom/google/android/gm/UndoOperation;

    .end local v1           #result:Lcom/google/android/gm/UndoOperation;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p2, v2, p3, v0}, Lcom/google/android/gm/UndoOperation;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)V

    .line 642
    .restart local v1       #result:Lcom/google/android/gm/UndoOperation;
    :cond_0
    :goto_0
    return-object v1

    .line 638
    :cond_1
    invoke-static {p3}, Lcom/google/android/gm/UndoOperation;->shouldResetUndoState(Lcom/google/android/gm/LabelOperations;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    goto :goto_0
.end method

.method static declared-synchronized getBulkOperationHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 598
    const-class v2, Lcom/google/android/gm/BulkOperationHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 600
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BulkOperationHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, handlerThread:Landroid/os/HandlerThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 604
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 605
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v3, 0x1f4

    invoke-static {v1, v3}, Lcom/google/android/gm/BulkOperationHelper$TimedLoggingHandler;->getHandler(Landroid/os/Looper;I)Landroid/os/Handler;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;

    .line 608
    :cond_0
    sget-object v1, Lcom/google/android/gm/BulkOperationHelper;->sBulkOperationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getLabelOperationMessage(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "labelOperations"
    .parameter "count"

    .prologue
    .line 683
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v7

    .line 684
    .local v7, isTrash:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v5

    .line 685
    .local v5, isSpam:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v4

    .line 686
    .local v4, isMute:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyArchive()Z

    move-result v1

    .line 687
    .local v1, isArchive:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyRead()Z

    move-result v2

    .line 688
    .local v2, isMarkingRead:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyUnread()Z

    move-result v3

    .line 689
    .local v3, isMarkingUnread:Z
    invoke-virtual {p2}, Lcom/google/android/gm/LabelOperations;->hasApplyStar()Z

    move-result v6

    .line 692
    .local v6, isStarring:Z
    if-eqz v7, :cond_0

    .line 693
    const v0, 0x7f100007

    .line 713
    .local v0, id:I
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 694
    .end local v0           #id:I
    :cond_0
    if-eqz v5, :cond_1

    .line 695
    const v0, 0x7f100005

    .restart local v0       #id:I
    goto :goto_0

    .line 696
    .end local v0           #id:I
    :cond_1
    if-eqz v1, :cond_2

    .line 697
    const v0, 0x7f100006

    .restart local v0       #id:I
    goto :goto_0

    .line 698
    .end local v0           #id:I
    :cond_2
    if-eqz v4, :cond_3

    .line 699
    const v0, 0x7f100004

    .restart local v0       #id:I
    goto :goto_0

    .line 700
    .end local v0           #id:I
    :cond_3
    if-eqz v2, :cond_4

    .line 701
    const v0, 0x7f100008

    .restart local v0       #id:I
    goto :goto_0

    .line 702
    .end local v0           #id:I
    :cond_4
    if-eqz v3, :cond_5

    .line 703
    const v0, 0x7f100009

    .restart local v0       #id:I
    goto :goto_0

    .line 704
    .end local v0           #id:I
    :cond_5
    if-eqz v6, :cond_6

    .line 705
    const v0, 0x7f10000a

    .restart local v0       #id:I
    goto :goto_0

    .line 706
    .end local v0           #id:I
    :cond_6
    if-eqz v6, :cond_7

    .line 707
    const v0, 0x7f10000b

    .restart local v0       #id:I
    goto :goto_0

    .line 711
    .end local v0           #id:I
    :cond_7
    const v0, 0x7f10000c

    .restart local v0       #id:I
    goto :goto_0
.end method

.method public static getRawOperations(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Z)Ljava/util/Map;
    .locals 10
    .parameter "ci"
    .parameter "displayedLabel"
    .parameter "label"
    .parameter "add"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 203
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 204
    .local v4, rawOperations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, canonicalName:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v8, "^k"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "^g"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    :cond_0
    if-nez p3, :cond_a

    move v5, v6

    .line 215
    .local v5, removeConversation:Z
    :goto_0
    const-string v8, "^i"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v5           #removeConversation:Z
    :cond_1
    const-string v8, "^k"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "^s"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const-string v8, "^i"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 221
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_3
    const-string v8, "^^important"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez p3, :cond_5

    :cond_4
    const-string v8, "^^unimportant"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez p3, :cond_b

    :cond_5
    move v2, v6

    .line 228
    .local v2, markImportantAction:Z
    :goto_1
    const-string v8, "^^unimportant"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez p3, :cond_7

    :cond_6
    const-string v8, "^^important"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez p3, :cond_c

    :cond_7
    move v3, v6

    .line 232
    .local v3, markNotImportantAction:Z
    :goto_2
    if-eqz v2, :cond_d

    .line 233
    const-string v6, "^im"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v6, "^io_im"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v6, "^imi"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v6, "^imn"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v6, "^io_ns"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v6

    const-string v7, "^i"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 244
    const-string v6, "^iim"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_8
    :goto_3
    const-string v6, "^i"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationInfo;->isImportant()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 258
    const-string v6, "^i"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 259
    .local v1, inboxAction:Z
    const-string v6, "^iim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .end local v1           #inboxAction:Z
    :cond_9
    return-object v4

    .end local v2           #markImportantAction:Z
    .end local v3           #markNotImportantAction:Z
    :cond_a
    move v5, v7

    .line 211
    goto/16 :goto_0

    :cond_b
    move v2, v7

    .line 225
    goto :goto_1

    .restart local v2       #markImportantAction:Z
    :cond_c
    move v3, v7

    .line 228
    goto :goto_2

    .line 246
    .restart local v3       #markNotImportantAction:Z
    :cond_d
    if-eqz v3, :cond_8

    .line 247
    const-string v6, "^imn"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v6, "^im"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v6, "^io_im"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v6, "^iim"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v6, "^imi"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v6, "^io_ns"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static declared-synchronized getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 612
    const-class v1, Lcom/google/android/gm/BulkOperationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/BulkOperationHelper;->sServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/EmptyService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gm/BulkOperationHelper;->sServiceIntent:Landroid/content/Intent;

    .line 615
    :cond_0
    sget-object v0, Lcom/google/android/gm/BulkOperationHelper;->sServiceIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "labelOperation"
    .parameter
    .parameter "operation"
    .parameter "displayedLabel"
    .parameter "showProgressDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v1, v2, :cond_0

    .line 520
    const-string v1, "Gmail_BOH"

    const-string v2, "startOperation() called when last operation hasn\'t finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 561
    :goto_0
    return-void

    .line 527
    :cond_0
    if-eqz p7, :cond_1

    .line 528
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/BulkOperationHelper;->showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1}, Lcom/google/android/gm/MenuHandler;->onStartBulkOperation()V

    .line 533
    sget-object v1, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 534
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$6;

    invoke-direct {v0, p0, p1, p5}, Lcom/google/android/gm/BulkOperationHelper$6;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 560
    .local v0, task:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/google/android/gm/BulkOperationHelper;->runTaskOnBulkOperationHandler(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private performYButtonActionInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 20
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, canonicalName:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v9}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    :cond_0
    invoke-static {v9}, Lcom/google/android/gm/MenuHandler;->getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 281
    .local v19, yActionCanonicalName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v6

    .line 283
    .local v6, yActionLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v6, :cond_1

    .line 284
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 314
    .end local v6           #yActionLabel:Lcom/google/android/gm/provider/Label;
    .end local v19           #yActionCanonicalName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    const-string v3, "^r"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 291
    .local v18, messagesToDelete:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 293
    .local v16, conversationsCopy:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/ConversationInfo;

    .line 294
    .local v13, ci:Lcom/google/android/gm/ConversationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/BulkOperationHelper;->mGmail:Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v13}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    move-object/from16 v0, p2

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J

    move-result-wide v14

    .line 296
    .local v14, composableMessageId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-eqz v3, :cond_3

    .line 297
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    .end local v13           #ci:Lcom/google/android/gm/ConversationInfo;
    .end local v14           #composableMessageId:J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessages(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    if-eqz p7, :cond_5

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V

    .line 309
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    if-eqz v3, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v4, Lcom/google/android/gm/LabelOperations;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v5}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    invoke-virtual {v3, v4}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    goto :goto_0
.end method

.method private postCommandAccepted(ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "opId"
    .parameter "commandListener"

    .prologue
    .line 344
    if-eqz p2, :cond_0

    .line 345
    invoke-interface {p2, p1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 347
    :cond_0
    return-void
.end method

.method private postCommandComplete(ILcom/google/android/gm/CommandListener;Lcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "opId"
    .parameter "commandListener"
    .parameter "undo"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    new-instance v1, Lcom/google/android/gm/BulkOperationHelper$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gm/BulkOperationHelper$1;-><init>(Lcom/google/android/gm/BulkOperationHelper;Lcom/google/android/gm/CommandListener;ILcom/google/android/gm/UndoOperation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method private runInBackground(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "context"
    .parameter "operation"

    .prologue
    .line 578
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/BulkOperationHelper$7;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 591
    .local v0, task:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/google/android/gm/BulkOperationHelper;->runTaskOnBulkOperationHandler(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method

.method private runTaskOnBulkOperationHandler(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 564
    invoke-static {}, Lcom/google/android/gm/BulkOperationHelper;->getBulkOperationHandler()Landroid/os/Handler;

    move-result-object v0

    .line 566
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V
    .locals 6
    .parameter "context"
    .parameter "labelOperations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 655
    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    .line 656
    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    .line 658
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "Gmail_BOH"

    const-string v4, "Progress dialog was still active!"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 660
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gm/MinTimeProgressDialog;->dismiss(Z)V

    .line 664
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/BulkOperationHelper;->getLabelOperationMessage(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;I)Ljava/lang/String;

    move-result-object v2

    .local v2, message:Ljava/lang/String;
    move-object v0, p1

    move v4, v3

    move-object v5, v1

    .line 665
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/MinTimeProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gm/MinTimeProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    .line 666
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 667
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0}, Lcom/google/android/gm/MinTimeProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 668
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MinTimeProgressDialog;->setMax(I)V

    .line 669
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/MinTimeProgressDialog;->setProgress(I)V

    .line 670
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, v3}, Lcom/google/android/gm/MinTimeProgressDialog;->setIndeterminate(Z)V

    .line 671
    return-void
.end method


# virtual methods
.method public addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "showProgressDialog"
    .parameter "forceBackground"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v2, Lcom/google/android/gm/BulkOperationHelper$2;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gm/BulkOperationHelper$2;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 423
    .local v2, task:Ljava/lang/Runnable;
    if-eqz p7, :cond_0

    .line 426
    const-string v3, "Gmail_BOH"

    const-string v4, "forcing operation to run in background"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 427
    invoke-direct {p0, p1, v2}, Lcom/google/android/gm/BulkOperationHelper;->runInBackground(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 433
    :goto_0
    return-void

    .line 429
    :cond_0
    move/from16 v0, p9

    move-object/from16 v1, p10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v8, v2

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 430
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public clearState()V
    .locals 4

    .prologue
    .line 751
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v1

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v0, v2, :cond_0

    .line 753
    const-string v0, "Gmail_BOH"

    const-string v2, "Thread still active!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 760
    :goto_0
    monitor-exit v1

    .line 761
    return-void

    .line 755
    :cond_0
    sget-object v0, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->IDLE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public hideProgressDialog(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    if-nez v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/MinTimeProgressDialog;->dismiss(Z)V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mProgressDialog:Lcom/google/android/gm/MinTimeProgressDialog;

    goto :goto_0
.end method

.method public onActivityAttached()V
    .locals 4

    .prologue
    .line 729
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v1

    .line 730
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    .line 731
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->FINISHED:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v0, v2, :cond_1

    .line 733
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/MenuHandler;->sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V

    .line 743
    :cond_0
    :goto_0
    monitor-exit v1

    .line 744
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    sget-object v2, Lcom/google/android/gm/BulkOperationHelper$ThreadState;->ACTIVE:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    if-ne v0, v2, :cond_0

    .line 738
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->getActivity()Lcom/google/android/gm/RestrictedActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper;->mLabelOperations:Lcom/google/android/gm/LabelOperations;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper;->mInfo:Ljava/util/Collection;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gm/BulkOperationHelper;->showProgressDialog(Landroid/content/Context;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityDetached()V
    .locals 2

    .prologue
    .line 767
    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper;->mState:Lcom/google/android/gm/BulkOperationHelper$ThreadState;

    monitor-enter v1

    .line 768
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/BulkOperationHelper;->mActivityAttached:Z

    .line 769
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BulkOperationHelper;->hideProgressDialog(Z)V

    .line 770
    monitor-exit v1

    .line 771
    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 11
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter "add"
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    .local p5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v6, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v6, p3, p4}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 493
    .local v6, operation:Lcom/google/android/gm/LabelOperations;
    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    .line 494
    new-instance v2, Lcom/google/android/gm/BulkOperationHelper$5;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gm/BulkOperationHelper$5;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    move-object v8, v2

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 501
    return-void
.end method

.method performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 393
    .local v4, actionableConversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabelInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLjava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 396
    return-void
.end method

.method performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter "add"
    .parameter
    .parameter "displayedLabel"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    .local p5, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v3, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v3, p3, p4}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .local v3, operation:Lcom/google/android/gm/LabelOperations;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 363
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 365
    return-void
.end method

.method performUndoOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "operations"
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 372
    return-void
.end method

.method public performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter "uncommittedConversationState"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/LabelOperations;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 446
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v9, Lcom/google/android/gm/LabelOperations;

    const/4 v0, 0x0

    invoke-direct {v9, p3, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 447
    .local v9, operation:Lcom/google/android/gm/LabelOperations;
    new-instance v0, Lcom/google/android/gm/BulkOperationHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/BulkOperationHelper$3;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V

    invoke-virtual {p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    move-object v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 453
    return-void
.end method

.method public toggleLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V
    .locals 18
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .parameter
    .parameter "displayedLabel"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p4, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v8, 0x1

    .line 468
    .local v8, add:Z
    :goto_0
    new-instance v17, Lcom/google/android/gm/LabelOperations;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 470
    .local v17, operation:Lcom/google/android/gm/LabelOperations;
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/BulkOperationHelper;->postCommandAccepted(ILcom/google/android/gm/CommandListener;)V

    .line 471
    new-instance v3, Lcom/google/android/gm/BulkOperationHelper$4;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/BulkOperationHelper$4;-><init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, v17

    move-object/from16 v13, p4

    move-object v14, v3

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gm/BulkOperationHelper;->maybeRunInBackground(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 477
    return-void

    .line 467
    .end local v8           #add:Z
    .end local v17           #operation:Lcom/google/android/gm/LabelOperations;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
