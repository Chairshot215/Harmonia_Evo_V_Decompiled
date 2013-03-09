.class public Lcom/android/ex/chips/RecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientAlternatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;
    }
.end annotation


# instance fields
.field private mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

.field private mCheckedItemPosition:I

.field private final mCurrentId:J

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mQuery:Lcom/android/ex/chips/Queries$Query;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJIILcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .locals 3
    .parameter "context"
    .parameter "contactId"
    .parameter "currentId"
    .parameter "viewId"
    .parameter "queryMode"
    .parameter "listener"

    .prologue
    .line 141
    invoke-static {p1, p2, p3, p7}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 143
    iput-wide p4, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    .line 144
    iput-object p8, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .line 146
    if-nez p7, :cond_0

    .line 147
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    if-ne p7, v0, :cond_1

    .line 149
    sget-object v0, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    .line 152
    const-string v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "contactId"
    .parameter "queryType"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 158
    if-nez p3, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v1}, Lcom/android/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v4}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-static {v6}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 166
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v1}, Lcom/android/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {v4}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, inAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/HashMap;
    .locals 25
    .parameter "context"
    .parameter
    .parameter "addressType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, inAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 76
    sget-object v22, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    .line 80
    .local v22, query:Lcom/android/ex/chips/Queries$Query;
    :goto_0
    const/16 v2, 0x32

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 81
    .local v18, addressesSize:I
    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 82
    .local v6, addresses:[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v19, bindString:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 85
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v24

    .line 86
    .local v24, tokens:[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v24

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v6, v21

    .line 87
    const-string v2, "?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_0

    .line 89
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 78
    .end local v6           #addresses:[Ljava/lang/String;
    .end local v18           #addressesSize:I
    .end local v19           #bindString:Ljava/lang/StringBuilder;
    .end local v21           #i:I
    .end local v22           #query:Lcom/android/ex/chips/Queries$Query;
    .end local v24           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    sget-object v22, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    .restart local v22       #query:Lcom/android/ex/chips/Queries$Query;
    goto :goto_0

    .line 86
    .restart local v6       #addresses:[Ljava/lang/String;
    .restart local v18       #addressesSize:I
    .restart local v19       #bindString:Ljava/lang/StringBuilder;
    .restart local v21       #i:I
    .restart local v24       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 93
    .end local v24           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_3
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Doing reverse lookup for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v23, recipientEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 104
    .local v20, c:Landroid/database/Cursor;
    if-eqz v20, :cond_8

    .line 106
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 109
    .local v17, address:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v7 .. v16}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "RecipAlternates"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    const-string v2, "RecipAlternates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received reverse look up information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RESULTS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NAME : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CONTACT ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADDRESS :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 128
    .end local v17           #address:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_8
    return-object v23

    .line 128
    :catchall_0
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/ex/chips/R$layout;->chips_recipient_dropdown_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "original"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 189
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 191
    .local v2, result:Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    .local v1, destinationsSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, destination:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    .end local v0           #destination:Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 260
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 262
    .local v5, position:I
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 263
    .local v2, display:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 264
    .local v4, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 265
    .local v3, entry:Lcom/android/ex/chips/RecipientEntry;
    if-nez v5, :cond_1

    .line 266
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 271
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_0
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    .local v0, destination:Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 280
    .local v1, destinationType:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 281
    iget-object v6, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/android/ex/chips/Queries$Query;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    return-void

    .line 273
    .end local v0           #destination:Landroid/widget/TextView;
    .end local v1           #destinationType:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 219
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 222
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;
    .locals 11
    .parameter "position"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 227
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x6

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 243
    if-nez p2, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 246
    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 247
    iput p1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 248
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    iget v2, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    invoke-interface {v1, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;->onCheckedItemChanged(I)V

    .line 252
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 253
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
