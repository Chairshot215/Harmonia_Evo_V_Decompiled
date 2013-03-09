.class public Lcom/android/htccontacts/model/EntityDeltaList;
.super Ljava/util/ArrayList;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/htccontacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/htccontacts/model/EntityDeltaList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/android/htccontacts/model/EntityDeltaList$1;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/EntityDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/model/EntityDeltaList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 9
    .parameter
    .parameter "index1"
    .parameter "index2"
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 239
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 241
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 243
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 244
    .local v3, rawContactId1:Ljava/lang/Long;
    aget v0, p4, p2

    .line 245
    .local v0, backRef1:I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 246
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 253
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 254
    .local v4, rawContactId2:Ljava/lang/Long;
    aget v1, p4, p3

    .line 255
    .local v1, backRef2:I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 256
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 263
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v1           #backRef2:I
    .end local v4           #rawContactId2:Ljava/lang/Long;
    :cond_0
    return-void

    .line 247
    :cond_1
    if-ltz v0, :cond_0

    .line 248
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 257
    .restart local v1       #backRef2:I
    .restart local v4       #rawContactId2:Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_0

    .line 258
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .parameter
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v0

    .line 225
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 226
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 227
    if-eq v1, v2, :cond_0

    .line 228
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/htccontacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Entity;",
            ">;)",
            "Lcom/android/htccontacts/model/EntityDeltaList;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Entity;>;"
    new-instance v2, Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-direct {v2}, Lcom/android/htccontacts/model/EntityDeltaList;-><init>()V

    .line 88
    .local v2, state:Lcom/android/htccontacts/model/EntityDeltaList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 91
    .local v0, before:Landroid/content/Entity;
    invoke-static {v0}, Lcom/android/htccontacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v1

    .line 92
    .local v1, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v2, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0           #before:Landroid/content/Entity;
    .end local v1           #entity:Lcom/android/htccontacts/model/EntityDelta;
    :cond_0
    return-object v2
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 7
    .parameter "entityUri"
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 71
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 75
    .local v6, iterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 1
    .parameter "delta"

    .prologue
    .line 59
    new-instance v0, Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDeltaList;-><init>()V

    .line 60
    .local v0, state:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 6
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 103
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/htccontacts/model/EntityDeltaList;

    .end local p0
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDeltaList;-><init>()V

    .line 106
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/EntityDelta;

    .line 107
    .local v4, remoteEntity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 110
    .local v3, rawContactId:Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/EntityDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v1

    .line 111
    .local v1, localEntity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-static {v1, v4}, Lcom/android/htccontacts/model/EntityDelta;->mergeAfter(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v2

    .line 113
    .local v2, merged:Lcom/android/htccontacts/model/EntityDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v1           #localEntity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v2           #merged:Lcom/android/htccontacts/model/EntityDelta;
    .end local v3           #rawContactId:Ljava/lang/Long;
    .end local v4           #remoteEntity:Lcom/android/htccontacts/model/EntityDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 212
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 214
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 215
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 131
    .local v7, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v15

    .line 132
    .local v15, rawContactId:J
    const/4 v9, -0x1

    .line 135
    .local v9, firstInsertRow:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/EntityDelta;

    .line 136
    .local v6, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 139
    .end local v6           #delta:Lcom/android/htccontacts/model/EntityDelta;
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 140
    .local v3, assertMark:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [I

    .line 142
    .local v4, backRefs:[I
    const/16 v17, 0x0

    .line 145
    .local v17, rawContactIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/EntityDelta;

    .line 146
    .restart local v6       #delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 147
    .local v8, firstBatch:I
    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDelta;->isContactInsert()Z

    move-result v12

    .line 148
    .local v12, isInsert:Z
    add-int/lit8 v18, v17, 0x1

    .end local v17           #rawContactIndex:I
    .local v18, rawContactIndex:I
    if-eqz v12, :cond_1

    move/from16 v19, v8

    :goto_2
    aput v19, v4, v17

    .line 150
    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .local v2, arr$:[J
    array-length v14, v2

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_3
    if-ge v11, v14, :cond_3

    aget-wide v19, v2, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 156
    .local v13, joinedRawContactId:Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 157
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_2

    .line 159
    const-string v19, "raw_contact_id2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 164
    :goto_4
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 148
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_1
    const/16 v19, -0x1

    goto :goto_2

    .line 161
    .restart local v2       #arr$:[J
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #i$:I
    .restart local v13       #joinedRawContactId:Ljava/lang/Long;
    .restart local v14       #len$:I
    :cond_2
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 169
    .end local v2           #arr$:[J
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #i$:I
    .end local v13           #joinedRawContactId:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_3
    if-nez v12, :cond_4

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_1

    .line 172
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v17, v18

    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto :goto_1

    .line 174
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_5
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_6

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 177
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 178
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_5
    move/from16 v17, v18

    .line 193
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    goto/16 :goto_1

    .line 181
    .end local v17           #rawContactIndex:I
    .restart local v18       #rawContactIndex:I
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_7

    .line 183
    move v9, v8

    goto :goto_5

    .line 187
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/model/EntityDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 188
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 195
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #firstBatch:I
    .end local v12           #isInsert:Z
    .end local v18           #rawContactIndex:I
    .restart local v17       #rawContactIndex:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/htccontacts/model/EntityDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 200
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    .line 201
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 204
    :cond_a
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 273
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 274
    .local v2, rawContactId:Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 275
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 278
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v2           #rawContactId:Ljava/lang/Long;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/EntityDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 297
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .parameter "index"

    .prologue
    .line 285
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 287
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 288
    .local v1, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 292
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v1           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 8
    .parameter "mimeType"

    .prologue
    .line 316
    const/4 v5, 0x0

    .line 317
    .local v5, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const/4 v6, 0x0

    .line 318
    .local v6, randomEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 319
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 320
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v4, :cond_2

    const/4 v1, 0x0

    .line 336
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    :goto_0
    return-object v1

    .line 322
    .restart local v0       #delta:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v4       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 323
    .local v1, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v7

    if-nez v7, :cond_1

    .line 325
    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 326
    move-object v5, v1

    goto :goto_1

    .line 327
    :cond_4
    if-nez v6, :cond_3

    .line 328
    move-object v6, v1

    goto :goto_1

    .line 333
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v1           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_5
    if-eqz v5, :cond_6

    move-object v1, v5

    .line 334
    goto :goto_0

    :cond_6
    move-object v1, v6

    .line 336
    goto :goto_0
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .parameter "rawContactId"

    .prologue
    const/4 v3, -0x1

    .line 304
    if-nez p1, :cond_1

    move v1, v3

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 306
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 308
    .local v0, currentId:Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentId:Ljava/lang/Long;
    :cond_2
    move v1, v3

    .line 312
    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 344
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 378
    .local v1, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 380
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    .line 384
    return-void

    .line 383
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0
    .parameter "rawContactIds"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    .line 352
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 367
    .local v2, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 369
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 371
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 372
    iget-boolean v3, p0, Lcom/android/htccontacts/model/EntityDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    return-void

    .line 372
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
