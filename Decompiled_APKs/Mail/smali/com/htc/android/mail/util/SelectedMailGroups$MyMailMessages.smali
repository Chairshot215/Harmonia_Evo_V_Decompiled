.class Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;
.super Ljava/lang/Object;
.source "SelectedMailGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/util/SelectedMailGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMailMessages"
.end annotation


# instance fields
.field private mMessages:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/util/SparseLongBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/util/SelectedMailGroups$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;-><init>()V

    return-void
.end method


# virtual methods
.method public add(JLjava/lang/String;J)V
    .locals 3
    .parameter "mailboxId"
    .parameter "group"
    .parameter "messageId"

    .prologue
    .line 327
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 328
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 332
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 333
    .local v1, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-nez v1, :cond_1

    .line 334
    new-instance v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .end local v1           #messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    invoke-direct {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    .line 335
    .restart local v1       #messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p4, p5, v2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 338
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 358
    return-void
.end method

.method public clear(JLjava/lang/String;)V
    .locals 3
    .parameter "mailboxId"
    .parameter "group"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 362
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 364
    .local v1, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->clear()V

    goto :goto_0
.end method

.method public contains(JLjava/lang/String;J)Z
    .locals 4
    .parameter "mailboxId"
    .parameter "group"
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 350
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 352
    .local v1, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1, p4, p5}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v2

    goto :goto_0
.end method

.method public getMessageIdSequence()Ljava/lang/String;
    .locals 14

    .prologue
    .line 377
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v10, sb:Ljava/lang/StringBuffer;
    iget-object v13, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v13}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v12

    .line 379
    .local v12, size:I
    const/4 v3, 0x1

    .line 380
    .local v3, isFirstItem:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v12, :cond_5

    .line 381
    iget-object v13, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v13, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 382
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v5, :cond_1

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 384
    .local v11, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, group:Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 386
    .local v8, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-eqz v8, :cond_2

    .line 387
    invoke-virtual {v8}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v9

    .line 388
    .local v9, messagesSize:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 389
    invoke-virtual {v8, v4}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->keyAt(I)J

    move-result-wide v6

    .line 390
    .local v6, messageId:J
    invoke-virtual {v8, v6, v7}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 391
    if-nez v3, :cond_3

    .line 392
    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_3
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 395
    const/4 v3, 0x0

    .line 388
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 400
    .end local v0           #group:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #j:I
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    .end local v6           #messageId:J
    .end local v8           #messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    .end local v9           #messagesSize:I
    .end local v11           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public remove(JLjava/lang/String;J)V
    .locals 3
    .parameter "mailboxId"
    .parameter "group"
    .parameter "messageId"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 342
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 344
    .local v1, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v1, p4, p5}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->delete(J)V

    goto :goto_0
.end method

.method public size(JLjava/lang/String;)I
    .locals 4
    .parameter "mailboxId"
    .parameter "group"

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->mMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 370
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/android/mail/util/SparseLongBooleanArray;>;"
    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v2

    .line 371
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 372
    .local v1, messages:Lcom/htc/android/mail/util/SparseLongBooleanArray;
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v2

    goto :goto_0
.end method
