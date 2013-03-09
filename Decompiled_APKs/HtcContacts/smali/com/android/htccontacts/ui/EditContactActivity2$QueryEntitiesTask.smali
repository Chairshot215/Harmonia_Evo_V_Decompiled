.class Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryEntitiesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 2152
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 2154
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2155
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0129

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2156
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 2157
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2158
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->progress:Ljava/lang/ref/WeakReference;

    .line 2159
    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 2162
    :cond_0
    const/4 v0, 0x0

    .line 2163
    return-void
.end method

.method private checkEnableRawContact(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)I
    .locals 1
    .parameter "state"
    .parameter "sources"

    .prologue
    .line 2393
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;
    .locals 55
    .parameter "target"
    .parameter "params"

    .prologue
    .line 2169
    move-object/from16 v15, p1

    .line 2170
    .local v15, context:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v49

    .line 2171
    .local v49, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x0

    aget-object v33, p2, v5

    .line 2173
    .local v33, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2176
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    .line 2177
    .local v36, lookUpUri:Landroid/net/Uri;
    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    .line 2178
    .local v12, authority:Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v37

    .line 2179
    .local v37, mimeType:Ljava/lang/String;
    const-string v5, "requestAccountType"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2180
    .local v44, requestAccountType:Ljava/lang/String;
    new-instance v45, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-direct {v0, v5}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V

    .line 2184
    .local v45, result:Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v51

    .line 2185
    .local v51, targetContactId:J
    invoke-static/range {v51 .. v52}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v34

    .line 2186
    .local v34, isProfile:Z
    if-eqz v34, :cond_0

    .line 2187
    const/4 v5, 0x1

    move-object/from16 v0, p1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static {v0, v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3502(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 2189
    :cond_0
    if-eqz v34, :cond_7

    .line 2192
    if-eqz v36, :cond_5

    .line 2193
    const-string v5, "entities"

    move-object/from16 v0, v36

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2194
    .local v4, entityUri:Landroid/net/Uri;
    sget-object v5, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "raw_contact_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2195
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_5

    .line 2200
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2201
    const-wide/16 v16, -0x1

    .line 2202
    .local v16, currentRawContactId:J
    const/16 v25, 0x0

    .line 2203
    .local v25, entity:Landroid/content/Entity;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    .local v24, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2205
    const/16 v5, 0xe

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2207
    .local v42, rawContactId:J
    const/16 v5, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2208
    .local v11, account_type:Ljava/lang/String;
    const/16 v5, 0xf

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2209
    .local v10, account_name:Ljava/lang/String;
    const/16 v5, 0x11

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2210
    .local v22, data_set:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2211
    cmp-long v5, v42, v16

    if-eqz v5, :cond_1

    .line 2212
    move-wide/from16 v16, v42

    .line 2213
    new-instance v25, Landroid/content/Entity;

    .end local v25           #entity:Landroid/content/Entity;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/util/ContactsUtils;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 2214
    .restart local v25       #entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    :cond_1
    const/16 v5, 0x1c

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2217
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/util/ContactsUtils;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v19

    .line 2218
    .local v19, data:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2204
    .end local v19           #data:Landroid/content/ContentValues;
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2222
    .end local v10           #account_name:Ljava/lang/String;
    .end local v11           #account_type:Ljava/lang/String;
    .end local v22           #data_set:Ljava/lang/String;
    .end local v42           #rawContactId:J
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    move-object/from16 v0, p1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v0, v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2902(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;

    .line 2224
    .end local v16           #currentRawContactId:J
    .end local v24           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v25           #entity:Landroid/content/Entity;
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2302
    .end local v4           #entityUri:Landroid/net/Uri;
    .end local v18           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_1
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    if-eqz v5, :cond_b

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2303
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v38

    .line 2304
    .local v38, nNonSnsize:I
    const/16 v31, 0x0

    .local v31, i:I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    .line 2305
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/htccontacts/model/EntityDelta;

    .line 2306
    .local v25, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v25 .. v25}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v53

    .line 2308
    .local v53, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "account_type"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2309
    .local v9, accountType:Ljava/lang/String;
    const-string v5, "data_set"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2310
    .local v21, dataSet:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v48

    .line 2313
    .local v48, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {v48 .. v48}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/htccontacts/model/DataKind;

    .line 2314
    .local v35, kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2315
    .local v20, dataMimeType:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2316
    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    invoke-static {v0, v1, v5}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    goto :goto_3

    .line 2243
    .end local v9           #accountType:Ljava/lang/String;
    .end local v20           #dataMimeType:Ljava/lang/String;
    .end local v21           #dataSet:Ljava/lang/String;
    .end local v25           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v31           #i:I
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v35           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v38           #nNonSnsize:I
    .end local v48           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v53           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_7
    const-string v47, "0"

    .line 2246
    .local v47, selection:Ljava/lang/String;
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2247
    const-string v5, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2249
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 2250
    .local v13, contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 2251
    move-wide/from16 v51, v13

    .line 2295
    .end local v13           #contactId:J
    :cond_8
    :goto_4
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3900(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    move-wide/from16 v0, v51

    invoke-static {v5, v0, v1, v6}, Lcom/android/htccontacts/util/ContactsUtils;->queryContactEntities(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object v24

    .line 2296
    .restart local v24       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    move-object/from16 v0, p1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static {v0, v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2902(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;

    .line 2297
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "EditContactActivity2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QueryEntitiesTask target.mState.size(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2258
    .end local v24           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_9
    const-string v5, "vnd.android.cursor.item/raw_contact"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2259
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v42

    .line 2260
    .restart local v42       #rawContactId:J
    move-wide/from16 v0, v42

    invoke-static {v3, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v13

    .line 2262
    .restart local v13       #contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 2263
    move-wide/from16 v51, v13

    goto :goto_4

    .line 2304
    .end local v13           #contactId:J
    .end local v42           #rawContactId:J
    .end local v47           #selection:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v21       #dataSet:Ljava/lang/String;
    .restart local v25       #entity:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v31       #i:I
    .restart local v32       #i$:Ljava/util/Iterator;
    .restart local v38       #nNonSnsize:I
    .restart local v48       #source:Lcom/android/htccontacts/model/AccountType;
    .restart local v53       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_a
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 2323
    .end local v9           #accountType:Ljava/lang/String;
    .end local v21           #dataSet:Ljava/lang/String;
    .end local v25           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v31           #i:I
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v38           #nNonSnsize:I
    .end local v48           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v53           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_b
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    .line 2324
    .local v26, extras:Landroid/os/Bundle;
    if-eqz v26, :cond_e

    invoke-virtual/range {v26 .. v26}, Landroid/os/Bundle;->size()I

    move-result v5

    if-lez v5, :cond_e

    const/16 v27, 0x1

    .line 2325
    .local v27, hasExtras:Z
    :goto_5
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v5

    if-lez v5, :cond_f

    const/16 v28, 0x1

    .line 2326
    .local v28, hasState:Z
    :goto_6
    if-eqz v27, :cond_c

    if-eqz v28, :cond_c

    .line 2328
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/htccontacts/model/EntityDelta;

    .line 2329
    .local v50, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v50 .. v50}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2331
    .restart local v9       #accountType:Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2332
    .restart local v21       #dataSet:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v48

    .line 2335
    .restart local v48       #source:Lcom/android/htccontacts/model/AccountType;
    move-object/from16 v0, v48

    move-object/from16 v1, v50

    move-object/from16 v2, v26

    invoke-static {v15, v0, v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 2339
    .end local v9           #accountType:Ljava/lang/String;
    .end local v21           #dataSet:Ljava/lang/String;
    .end local v48           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v50           #state:Lcom/android/htccontacts/model/EntityDelta;
    :cond_c
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    if-eqz v5, :cond_12

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2340
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v39

    .line 2341
    .local v39, nSize:I
    const/16 v31, 0x0

    .restart local v31       #i:I
    :goto_7
    move/from16 v0, v31

    move/from16 v1, v39

    if-ge v0, v1, :cond_12

    .line 2342
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/htccontacts/model/EntityDelta;

    .line 2343
    .restart local v25       #entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v25 .. v25}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v53

    .line 2344
    .restart local v53       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "_id"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 2346
    .restart local v42       #rawContactId:J
    const-string v5, "vnd.android.cursor.item/note"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v41

    .line 2347
    .local v41, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v29, htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v41, :cond_10

    .line 2349
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 2350
    .local v54, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "data1"

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2352
    .local v40, note:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2353
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 2354
    .local v46, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v40

    .line 2355
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2356
    invoke-virtual/range {v54 .. v54}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 2357
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2358
    .local v30, htcHiddentagString:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2360
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2324
    .end local v25           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v27           #hasExtras:Z
    .end local v28           #hasState:Z
    .end local v29           #htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30           #htcHiddentagString:Ljava/lang/String;
    .end local v31           #i:I
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v39           #nSize:I
    .end local v40           #note:Ljava/lang/String;
    .end local v41           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v42           #rawContactId:J
    .end local v46           #sb:Ljava/lang/StringBuilder;
    .end local v53           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v54           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 2325
    .restart local v27       #hasExtras:Z
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 2365
    .restart local v25       #entity:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v28       #hasState:Z
    .restart local v29       #htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31       #i:I
    .restart local v39       #nSize:I
    .restart local v41       #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v42       #rawContactId:J
    .restart local v53       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_10
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 2366
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mHiddenHtcNotes:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4000(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    :cond_11
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_7

    .line 2374
    .end local v25           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v29           #htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31           #i:I
    .end local v39           #nSize:I
    .end local v41           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v42           #rawContactId:J
    .end local v53           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_12
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v5, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->checkEnableRawContact(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)I

    move-result v23

    .line 2376
    .local v23, editableRawContactsNum:I
    const/4 v5, 0x1

    move/from16 v0, v23

    if-le v0, v5, :cond_13

    .line 2377
    const/4 v5, 0x0

    move-object/from16 v0, v45

    iput-boolean v5, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->isOnlyOne:Z

    .line 2378
    move-wide/from16 v0, v51

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->targetCotactId:J

    .line 2389
    :goto_9
    return-object v45

    .line 2380
    :cond_13
    const/4 v5, 0x1

    move/from16 v0, v23

    if-ne v0, v5, :cond_14

    .line 2381
    const/4 v5, 0x1

    move-object/from16 v0, v45

    iput-boolean v5, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->isOnlyOne:Z

    .line 2382
    move-wide/from16 v0, v51

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->targetCotactId:J

    goto :goto_9

    .line 2385
    :cond_14
    const/4 v5, 0x1

    move-object/from16 v0, v45

    iput-boolean v5, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->isOnlyOne:Z

    .line 2386
    const-wide/16 v5, -0x1

    move-object/from16 v0, v45

    iput-wide v5, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->targetCotactId:J

    .line 2387
    const/4 v5, 0x1

    move-object/from16 v0, v45

    iput-boolean v5, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;->isFailed:Z

    goto :goto_9
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2139
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 2420
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2453
    :cond_0
    :goto_0
    return-void

    .line 2422
    :cond_1
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z
    invoke-static {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4202(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 2423
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 2424
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    if-eqz v0, :cond_2

    .line 2425
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 2430
    :cond_2
    if-eqz p1, :cond_0

    .line 2431
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindEditors()V

    .line 2432
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 2433
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setQueryEntitiesTaskDone(Z)V

    .line 2434
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->doQueryNamePhotoTask()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2139
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 2146
    if-eqz p1, :cond_0

    .line 2147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setQueryEntitiesTaskDone(Z)V

    .line 2149
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2139
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method
