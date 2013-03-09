.class public Lcom/google/android/gm/provider/PublicContentProvider;
.super Landroid/content/ContentProvider;
.source "PublicContentProvider.java"


# static fields
.field private static final VALID_PUBLIC_LABEL_PROJECTION_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 33
    sget-object v0, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gm"

    const-string v2, "*/labels"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gm"

    const-string v2, "*/label/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gm"

    const-string v2, "*/label/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->LABEL_PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/PublicContentProvider;->VALID_PUBLIC_LABEL_PROJECTION_COLUMNS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static broadcastLabelNotifications(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, labelIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 290
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 291
    .local v1, labelId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUriForId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 296
    .end local v1           #labelId:Ljava/lang/Long;
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/contentprovider/GmailContract$Labels;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 297
    return-void
.end method

.method private getCursorForLabel([Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "projection"
    .parameter "mailEngine"
    .parameter "labelName"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, result:Landroid/database/Cursor;
    if-eqz p3, :cond_0

    .line 245
    invoke-virtual {p2, p1}, Lcom/google/android/gm/provider/MailEngine;->getLabelQueryBuilder([Ljava/lang/String;)Lcom/google/android/gm/provider/LabelQueryBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/LabelQueryBuilder;->filterCanonicalName(Ljava/util/List;)Lcom/google/android/gm/provider/LabelQueryBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/LabelQueryBuilder;->showHidden(Z)Lcom/google/android/gm/provider/LabelQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/LabelQueryBuilder;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 250
    :cond_0
    return-object v0
.end method

.method private getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2
    .parameter "account"

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/PublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    return-object v0
.end method

.method private getPublicLabelCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 24
    .parameter "account"
    .parameter "requestedProjection"
    .parameter "privateCursor"

    .prologue
    .line 176
    if-nez p3, :cond_1

    .line 177
    const-string v21, "GmailCP"

    const-string v22, "null private cursor"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    const/16 v19, 0x0

    .line 238
    :cond_0
    :goto_0
    return-object v19

    .line 182
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/PublicContentProvider;->validateQueryProjection([Ljava/lang/String;)V

    .line 184
    if-eqz p2, :cond_4

    move-object/from16 v20, p2

    .line 187
    .local v20, resultProjection:[Ljava/lang/String;
    :goto_1
    new-instance v19, Landroid/database/MatrixCursor;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 189
    .local v19, result:Landroid/database/MatrixCursor;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 190
    const-string v21, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 191
    .local v12, idColumnIndex:I
    const-string v21, "canonicalName"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 193
    .local v7, canonicalNameColumnIndex:I
    const-string v21, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 195
    .local v16, nameColumnIndex:I
    const-string v21, "numConversations"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 197
    .local v17, numConversationsColumnIndex:I
    const-string v21, "numUnreadConversations"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 199
    .local v18, numUnreadConversationsColumnIndex:I
    const-string v21, "color"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 202
    .local v9, colorColumnIndex:I
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 204
    .local v5, builder:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v3, v20

    .local v3, arr$:[Ljava/lang/String;
    array-length v15, v3

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v15, :cond_c

    aget-object v10, v3, v11

    .line 205
    .local v10, column:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 206
    .local v13, labelId:I
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, color:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, canonicalName:Ljava/lang/String;
    const-string v21, "_id"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 209
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 204
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 184
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #builder:Landroid/database/MatrixCursor$RowBuilder;
    .end local v6           #canonicalName:Ljava/lang/String;
    .end local v7           #canonicalNameColumnIndex:I
    .end local v8           #color:Ljava/lang/String;
    .end local v9           #colorColumnIndex:I
    .end local v10           #column:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #idColumnIndex:I
    .end local v13           #labelId:I
    .end local v15           #len$:I
    .end local v16           #nameColumnIndex:I
    .end local v17           #numConversationsColumnIndex:I
    .end local v18           #numUnreadConversationsColumnIndex:I
    .end local v19           #result:Landroid/database/MatrixCursor;
    .end local v20           #resultProjection:[Ljava/lang/String;
    :cond_4
    sget-object v20, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->LABEL_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_1

    .line 210
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #builder:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v6       #canonicalName:Ljava/lang/String;
    .restart local v7       #canonicalNameColumnIndex:I
    .restart local v8       #color:Ljava/lang/String;
    .restart local v9       #colorColumnIndex:I
    .restart local v10       #column:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #idColumnIndex:I
    .restart local v13       #labelId:I
    .restart local v15       #len$:I
    .restart local v16       #nameColumnIndex:I
    .restart local v17       #numConversationsColumnIndex:I
    .restart local v18       #numUnreadConversationsColumnIndex:I
    .restart local v19       #result:Landroid/database/MatrixCursor;
    .restart local v20       #resultProjection:[Ljava/lang/String;
    :cond_5
    const-string v21, "canonicalName"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 211
    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 212
    :cond_6
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 213
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 214
    :cond_7
    const-string v21, "numConversations"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 216
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 218
    :cond_8
    const-string v21, "numUnreadConversations"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    .line 222
    :cond_9
    const-string v21, "labelUri"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 223
    int-to-long v0, v13

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUriForId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v14

    .line 224
    .local v14, labelUri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 225
    .end local v14           #labelUri:Landroid/net/Uri;
    :cond_a
    const-string v21, "background_color"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 227
    move-object/from16 v0, p1

    invoke-static {v0, v6, v8}, Lcom/google/android/gm/provider/Label;->getBackgroundColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 229
    .local v4, backgroundColor:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 230
    .end local v4           #backgroundColor:I
    :cond_b
    const-string v21, "text_color"

    move-object/from16 v0, v21

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 231
    move-object/from16 v0, p1

    invoke-static {v0, v6, v8}, Lcom/google/android/gm/provider/Label;->getTextColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 233
    .restart local v4       #backgroundColor:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 236
    .end local v4           #backgroundColor:I
    .end local v6           #canonicalName:Ljava/lang/String;
    .end local v8           #color:Ljava/lang/String;
    .end local v10           #column:Ljava/lang/String;
    .end local v13           #labelId:I
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_2

    goto/16 :goto_0
.end method

.method private validateQueryProjection([Ljava/lang/String;)V
    .locals 6
    .parameter "projection"

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 163
    .local v1, column:Ljava/lang/String;
    sget-object v4, Lcom/google/android/gm/provider/PublicContentProvider;->VALID_PUBLIC_LABEL_PROJECTION_COLUMNS:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid projection"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #column:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 272
    sget-object v2, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 273
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 275
    .end local v1           #type:Ljava/lang/String;
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.com.google.android.gm.label"

    .line 276
    .restart local v1       #type:Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v1           #type:Ljava/lang/String;
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.com.google.android.gm.label"

    .line 280
    .restart local v1       #type:Ljava/lang/String;
    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .parameter "url"
    .parameter "values"

    .prologue
    .line 255
    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gm/provider/PublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/PublicContentProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 66
    const-string v16, "GmailCP"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 67
    const-string v16, "GmailCP"

    const-string v17, "PublicContentProvider.query: %s(%s, %s)"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/LogUtils;->contentUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object p3, v18, v19

    const/16 v19, 0x2

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 72
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "sortOrder must be empty"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 75
    :cond_1
    sget-object v16, Lcom/google/android/gm/provider/PublicContentProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 76
    .local v12, match:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .local v2, account:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/PublicContentProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v11

    .line 81
    .local v11, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    const/4 v15, 0x1

    .line 84
    .local v15, setNotificationUri:Z
    invoke-static {v2}, Lcom/google/android/gm/provider/MailIndexerService;->onContentProviderAccess(Ljava/lang/String;)V

    .line 85
    packed-switch v12, :pswitch_data_0

    .line 144
    const-string v16, "GmailCP"

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 145
    const-string v16, "GmailCP"

    const-string v17, "Unsupported query uri: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/LogUtils;->contentUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    :cond_2
    const/4 v13, 0x0

    .line 152
    .local v13, result:Landroid/database/Cursor;
    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    if-eqz v15, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/PublicContentProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v13, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 157
    :cond_4
    return-object v13

    .line 87
    .end local v13           #result:Landroid/database/Cursor;
    :pswitch_0
    const-string v16, "GmailCP"

    const-string v17, "Query for list of labels"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    sget-object v16, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/google/android/gm/provider/MailEngine;->getLabelQueryBuilder([Ljava/lang/String;)Lcom/google/android/gm/provider/LabelQueryBuilder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/gm/provider/LabelQueryBuilder;->showHidden(Z)Lcom/google/android/gm/provider/LabelQueryBuilder;

    move-result-object v3

    .line 91
    .local v3, builder:Lcom/google/android/gm/provider/LabelQueryBuilder;
    invoke-virtual {v3}, Lcom/google/android/gm/provider/LabelQueryBuilder;->query()Landroid/database/Cursor;

    move-result-object v9

    .line 93
    .local v9, labelListCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v9}, Lcom/google/android/gm/provider/PublicContentProvider;->getPublicLabelCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 95
    .restart local v13       #result:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    .end local v13           #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v16

    if-eqz v9, :cond_5

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v16

    .line 102
    .end local v3           #builder:Lcom/google/android/gm/provider/LabelQueryBuilder;
    .end local v9           #labelListCursor:Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 105
    .local v7, labelId:J
    invoke-virtual {v11}, Lcom/google/android/gm/provider/MailEngine;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getCanonicalName(J)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, canonicalName:Ljava/lang/String;
    sget-object v16, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11, v4}, Lcom/google/android/gm/provider/PublicContentProvider;->getCursorForLabel([Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 109
    .local v5, labelByIdCursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v5}, Lcom/google/android/gm/provider/PublicContentProvider;->getPublicLabelCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 111
    .restart local v13       #result:Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 112
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 111
    .end local v13           #result:Landroid/database/Cursor;
    :catchall_1
    move-exception v16

    if-eqz v5, :cond_6

    .line 112
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v16

    .line 117
    .end local v4           #canonicalName:Ljava/lang/String;
    .end local v5           #labelByIdCursor:Landroid/database/Cursor;
    .end local v7           #labelId:J
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 119
    .local v10, labelName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 121
    .local v14, resultLabelId:Ljava/lang/Long;
    sget-object v16, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11, v10}, Lcom/google/android/gm/provider/PublicContentProvider;->getCursorForLabel([Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, labelByNameCursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v6}, Lcom/google/android/gm/provider/PublicContentProvider;->getPublicLabelCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v13

    .line 125
    .restart local v13       #result:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 127
    const-string v16, "_id"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v14

    .line 131
    :cond_7
    if-eqz v6, :cond_8

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_8
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/PublicContentProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelUriForId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 140
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 131
    .end local v13           #result:Landroid/database/Cursor;
    :catchall_2
    move-exception v16

    if-eqz v6, :cond_9

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v16

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method
