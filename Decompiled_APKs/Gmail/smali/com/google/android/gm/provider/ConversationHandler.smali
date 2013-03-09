.class public abstract Lcom/google/android/gm/provider/ConversationHandler;
.super Ljava/lang/Object;
.source "ConversationHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

.field protected final mMailCore:Lcom/google/android/gm/provider/MailCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/gm/provider/ConversationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/ConversationHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V
    .locals 1
    .parameter "db"
    .parameter "mailCore"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iput-object p2, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    .line 29
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/ConversationHandler;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 30
    return-void
.end method

.method private static calculateSetIntersectionAndDifferences(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, one:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p1, two:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, onlyOne:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p3, onlyTwo:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p4, both:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 359
    sget-boolean v0, Lcom/google/android/gm/provider/ConversationHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 360
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 364
    :cond_1
    if-eqz p3, :cond_3

    .line 365
    sget-boolean v0, Lcom/google/android/gm/provider/ConversationHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 367
    invoke-interface {p3, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 370
    :cond_3
    if-eqz p4, :cond_5

    .line 371
    sget-boolean v0, Lcom/google/android/gm/provider/ConversationHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 372
    :cond_4
    invoke-interface {p4, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-interface {p4, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 375
    :cond_5
    return-void
.end method

.method private updateLabelCounts(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 17
    .parameter "rationale"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p3, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p4, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p5, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v11}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v5

    .line 213
    .local v5, labelIdUnread:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eq v11, v12, :cond_1

    .line 215
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 216
    .local v3, labelId:Ljava/lang/Long;
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v3           #labelId:Ljava/lang/Long;
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 219
    .restart local v3       #labelId:Ljava/lang/Long;
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #labelId:Ljava/lang/Long;
    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 223
    .local v3, labelId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/LabelRecord;

    iget-boolean v10, v11, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    .line 224
    .local v10, wasZombie:Z
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/LabelRecord;

    iget-boolean v2, v11, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    .line 231
    .local v2, isZombie:Z
    if-nez v10, :cond_3

    if-eqz v2, :cond_3

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3
    if-eqz v10, :cond_2

    if-nez v2, :cond_2

    .line 235
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    .end local v2           #isZombie:Z
    .end local v3           #labelId:J
    .end local v10           #wasZombie:Z
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 239
    .local v7, labelsToNotify:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 240
    .local v8, oldUnread:Z
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 242
    .local v3, labelId:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-eqz v11, :cond_5

    .line 245
    sget-object v11, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p1

    if-eq v0, v11, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 253
    :cond_6
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/LabelRecord;

    iget-boolean v11, v11, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    if-nez v11, :cond_5

    .line 258
    :cond_7
    if-eqz v8, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0),\n  numUnreadConversations =     max(numUnreadConversations - 1, 0)\nWHERE _id = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const-string v11, "Gmail"

    const-string v12, "onConversationChanged decreased total and unread, label %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v11, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    :goto_4
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 268
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0)\nWHERE _id = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    const-string v11, "Gmail"

    const-string v12, "onConversationChanged decreased total, label %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v11, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 276
    .end local v3           #labelId:Ljava/lang/Long;
    :cond_9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 277
    .local v9, unread:Z
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 279
    .restart local v3       #labelId:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-eqz v11, :cond_a

    .line 283
    sget-object v11, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p1

    if-eq v0, v11, :cond_b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 288
    :cond_b
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/LabelRecord;

    iget-boolean v11, v11, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    if-nez v11, :cond_a

    .line 293
    :cond_c
    if-eqz v9, :cond_d

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "UPDATE labels SET\n  numConversations = numConversations + 1,\n  numUnreadConversations = numUnreadConversations + 1\nWHERE _id = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const-string v11, "Gmail"

    const-string v12, "onConversationChanged increased total and unread, label %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v11, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    :goto_6
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 302
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "UPDATE labels SET\n  numConversations = numConversations + 1\nWHERE _id = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    const-string v11, "Gmail"

    const-string v12, "onConversationChanged increased total, label %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v11, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 310
    .end local v3           #labelId:Ljava/lang/Long;
    :cond_e
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_f

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v11}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v11, v11, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    invoke-interface {v11, v7}, Lcom/google/android/gm/provider/MailCore$Listener;->onLabelsUpdated(Ljava/util/Set;)V

    .line 318
    :cond_f
    return-void
.end method

.method private updateLabels(JJLjava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 30
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "rationale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p5, oldLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p7, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p8, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p9, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p10, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/gm/provider/MailCore$NotificationRequest;

    .line 166
    .local v29, request:Lcom/google/android/gm/provider/MailCore$NotificationRequest;
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getTagLabelId()J

    move-result-wide v3

    .line 167
    .local v3, notificationTagLabelId:J
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v26

    .line 168
    .local v26, matchesNew:Z
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    .line 170
    .local v24, hasTagLabel:Z
    move/from16 v0, v26

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 172
    if-eqz v26, :cond_1

    sget-object v2, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p11

    if-eq v0, v2, :cond_1

    .line 177
    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v27

    .line 178
    .local v27, matchesOld:Z
    if-eqz p7, :cond_2

    move-object/from16 v0, v29

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v28, 0x1

    .line 180
    .local v28, newMessageLabelsMatchRequest:Z
    :goto_1
    if-nez v27, :cond_1

    if-eqz v28, :cond_1

    .line 183
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getLabelId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/LabelRecord;

    .line 184
    .local v11, labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    if-eqz v11, :cond_1

    .line 185
    sget-object v12, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v2, p0

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gm/provider/ConversationHandler;->updateLabelsAddLabel(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/LabelRecord;Lcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/google/android/gm/provider/MailCore$Listener;->onConversationNewlyMatchesNotificationRequest(Lcom/google/android/gm/provider/MailCore$NotificationRequest;)V

    .line 190
    const-string v2, "Gmail"

    const-string v5, "onConversationChanged %d added tag label %d for label %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getLabelId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 195
    .end local v11           #labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    .end local v27           #matchesOld:Z
    .end local v28           #newMessageLabelsMatchRequest:Z
    :cond_1
    if-nez v26, :cond_0

    .line 196
    sget-object v23, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v12, p0

    move-wide v13, v3

    move-wide/from16 v15, p1

    move-wide/from16 v17, p3

    move-object/from16 v19, p6

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v12 .. v23}, Lcom/google/android/gm/provider/ConversationHandler;->updateLabelsRemoveLabel(JJJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 199
    const-string v2, "Gmail"

    const-string v5, "onConversationChanged %d removed tag label %d for label %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getLabelId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 178
    .restart local v27       #matchesOld:Z
    :cond_2
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 203
    .end local v3           #notificationTagLabelId:J
    .end local v24           #hasTagLabel:Z
    .end local v26           #matchesNew:Z
    .end local v27           #matchesOld:Z
    .end local v29           #request:Lcom/google/android/gm/provider/MailCore$NotificationRequest;
    :cond_3
    return-void
.end method

.method private updateLabelsAddLabel(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/LabelRecord;Lcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 6
    .parameter "labelId"
    .parameter "maxMessageId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "labelRecord"
    .parameter "recordHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            "Lcom/google/android/gm/provider/Operations$RecordHistory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p6, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p7, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p8, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    const/4 v4, 0x1

    move-wide v1, p3

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 330
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p5, v0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 332
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method private updateLabelsRemoveLabel(JJJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 9
    .parameter "labelId"
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "recordHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/Operations$RecordHistory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    .local p7, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p8, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p9, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p10, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v2, p0, Lcom/google/android/gm/provider/ConversationHandler;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v2, p3

    move-wide v4, p5

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 346
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method


# virtual methods
.method public insertConversationLabels(JJLjava/util/Map;)V
    .locals 9
    .parameter "conversationId"
    .parameter "queryId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p5, labelRecords:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v0, conversationLabelsValues:Landroid/content/ContentValues;
    const-string v6, "queryId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v6, "conversation_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 146
    .local v3, labelId:J
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/provider/LabelRecord;

    .line 148
    .local v5, labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    const-string v6, "labels_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v6, "isZombie"

    iget-boolean v7, v5, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 150
    const-string v6, "sortMessageId"

    iget-wide v7, v5, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v6, "date"

    iget-wide v7, v5, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    iget-object v6, p0, Lcom/google/android/gm/provider/ConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "conversation_labels"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 154
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .end local v3           #labelId:J
    .end local v5           #labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    :cond_0
    return-void
.end method

.method final onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;JLjava/util/Map;JLjava/util/Map;ZLandroid/util/TimingLogger;)V
    .locals 13
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "queryId"
    .parameter
    .parameter "oldMaxMessageId"
    .parameter
    .parameter "messageLabelChange"
    .parameter "timings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;Z",
            "Landroid/util/TimingLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p6, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p9, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gm/provider/ConversationHandler;->onConversationChangedImpl(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLandroid/util/TimingLogger;)Z

    move-result v12

    .line 78
    .local v12, conversationDeleted:Z
    const-string v1, "process messages"

    move-object/from16 v0, p11

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 80
    if-nez v12, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p4

    move-object/from16 v6, p9

    .line 81
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/ConversationHandler;->insertConversationLabels(JJLjava/util/Map;)V

    .line 82
    const-string v1, "write labels"

    move-object/from16 v0, p11

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method protected abstract onConversationChangedImpl(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLandroid/util/TimingLogger;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;Z",
            "Landroid/util/TimingLogger;",
            ")Z"
        }
    .end annotation
.end method

.method public updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V
    .locals 12
    .parameter "conversationId"
    .parameter "rationale"
    .parameter
    .parameter
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p5, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p8, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 104
    .local v8, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 105
    .local v9, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 107
    .local v10, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1, v8, v9, v10}, Lcom/google/android/gm/provider/ConversationHandler;->calculateSetIntersectionAndDifferences(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 110
    const-string v0, "Gmail"

    const-string v1, "onConversationChanged %d removedLabels (%s), addedLabels (%s), keptLabels (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gm/provider/ConversationHandler;->updateLabels(JJLjava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 121
    const-string v0, "Gmail"

    const-string v1, "onConversationChanged after updateLabels %d removedLabels (%s), addedLabels (%s), keptLabels (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v4, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 124
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gm/provider/ConversationHandler;->updateLabelCounts(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 131
    const/4 v8, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    return-void
.end method
