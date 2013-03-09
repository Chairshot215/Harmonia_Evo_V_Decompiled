.class Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryNamePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1853
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1854
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 56
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1868
    move-object/from16 v13, p1

    .line 1869
    .local v13, context:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v53

    .line 1870
    .local v53, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v4, 0x0

    aget-object v26, p2, v4

    .line 1871
    .local v26, intent:Landroid/content/Intent;
    invoke-virtual {v13}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1873
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 1874
    .local v17, data:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 1875
    .local v9, authority:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v34

    .line 1877
    .local v34, mimeType:Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 1878
    .local v11, contactId:J
    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1879
    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1881
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 1888
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v11

    if-ltz v4, :cond_3

    const/16 v41, 0x0

    .line 2116
    :cond_1
    :goto_1
    return-object v41

    .line 1882
    :cond_2
    const-string v4, "vnd.android.cursor.item/raw_contact"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1883
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v38

    .line 1884
    .local v38, rawContactId:J
    move-wide/from16 v0, v38

    invoke-static {v2, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v11

    goto :goto_0

    .line 1889
    .end local v38           #rawContactId:J
    :cond_3
    const/4 v3, 0x0

    .line 1890
    .local v3, uri:Landroid/net/Uri;
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1891
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1905
    :goto_2
    new-instance v41, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2$1;)V

    .line 1906
    .local v41, result:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    move-object/from16 v0, v41

    iput-wide v11, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactId:J

    .line 1907
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name_raw_contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1909
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1910
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1911
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    .line 1912
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v41

    iput-wide v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    .line 1913
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v41

    iput-wide v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactPhoto_id:J

    .line 1915
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1927
    :cond_5
    const/16 v22, 0x0

    .line 1928
    .local v22, es:Lcom/android/htccontacts/model/EntityDeltaList;
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1930
    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/htccontacts/util/ContactsUtils;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v20

    .line 1931
    .local v20, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 1932
    .local v35, nSize:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    .line 1933
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity;

    .line 1934
    .local v21, entity:Landroid/content/Entity;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v54

    .line 1935
    .local v54, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v54, :cond_7

    .line 1936
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Entity$NamedContentValues;

    .line 1937
    .local v36, ncv:Landroid/content/Entity$NamedContentValues;
    if-eqz v36, :cond_6

    .line 1938
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1939
    .local v16, cv:Landroid/content/ContentValues;
    if-eqz v16, :cond_6

    const-string v4, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "vnd.android.cursor.item/vnd.googleplus.profile"

    const-string v5, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1940
    const/4 v4, 0x1

    move-object/from16 v0, p1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3102(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 1932
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1893
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v20           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v21           #entity:Landroid/content/Entity;
    .end local v22           #es:Lcom/android/htccontacts/model/EntityDeltaList;
    .end local v24           #i:I
    .end local v35           #nSize:I
    .end local v41           #result:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .end local v54           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_8
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1894
    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_2

    .line 1946
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v20       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v22       #es:Lcom/android/htccontacts/model/EntityDeltaList;
    .restart local v24       #i:I
    .restart local v35       #nSize:I
    .restart local v41       #result:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v22

    .line 1955
    .end local v24           #i:I
    .end local v35           #nSize:I
    :goto_4
    if-eqz v22, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1956
    :cond_a
    const-string v4, "EditContactActivity2"

    const-string v5, "doInBackground of QueryNamePhotoResult es == null || es.isEmpty()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->finish()V

    .line 1958
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 1949
    .end local v20           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v4}, Lcom/android/htccontacts/util/ContactsUtils;->queryContactEntities(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object v20

    .line 1950
    .restart local v20       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v22

    goto :goto_4

    .line 1960
    :cond_c
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1961
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1962
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1963
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1964
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1965
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1966
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1968
    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v51

    .line 1969
    .local v51, size:I
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult size1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_d

    .line 1971
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/htccontacts/model/EntityDelta;

    .line 1972
    .local v21, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v55

    .line 1973
    .local v55, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "account_type"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1975
    .local v8, accountType:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 1978
    .local v33, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "display_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const-string v4, "prefix_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const-string v4, "suffix_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    const-string v4, "given_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    const-string v4, "middle_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const-string v4, "family_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const-string v4, "phonetic_given_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const-string v4, "phonetic_middle_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    const-string v4, "phonetic_family_name"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 1994
    .end local v8           #accountType:Ljava/lang/String;
    .end local v21           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v33           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v55           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v51

    .line 1995
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult size2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1999
    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v51

    if-ge v0, v1, :cond_1

    .line 2000
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/htccontacts/model/EntityDelta;

    .line 2001
    .restart local v21       #entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v55

    .line 2003
    .restart local v55       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "account_type"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2004
    .restart local v8       #accountType:Ljava/lang/String;
    const-string v4, "data_set"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2005
    .local v19, dataSet:Ljava/lang/String;
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult accountType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v52

    .line 2009
    .local v52, source:Lcom/android/htccontacts/model/AccountType;
    const-string v4, "com.google"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "plus"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v23, 0x1

    .line 2011
    .local v23, googlePlus:Z
    :goto_7
    const-string v4, "_id"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 2012
    .local v31, lSnRawContactId:J
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult lSnRawContactId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2014
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v23, :cond_e

    .line 2015
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContact_Id:Ljava/lang/Long;

    .line 2018
    :cond_e
    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 2019
    .local v14, csDisplayLabel:Ljava/lang/CharSequence;
    if-nez v8, :cond_f

    if-nez v19, :cond_f

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2020
    const v4, 0x7f0a0117

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2022
    :cond_f
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult csDisplayLabel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2024
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v23, :cond_10

    .line 2025
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusDisplayType:Ljava/lang/String;

    .line 2028
    :cond_10
    invoke-virtual/range {v52 .. v52}, Lcom/android/htccontacts/model/AccountType;->areContactsWritable()Z

    move-result v4

    if-nez v4, :cond_14

    const/16 v40, 0x1

    .line 2029
    .local v40, readonly:Z
    :goto_8
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult readonly: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2031
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v23, :cond_11

    .line 2032
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactReadOnlyAccountType:Ljava/lang/Boolean;

    .line 2035
    :cond_11
    invoke-virtual/range {v52 .. v52}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :cond_12
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/htccontacts/model/DataKind;

    .line 2036
    .local v27, kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2037
    .local v18, dataMimeType:Ljava/lang/String;
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground of QueryNamePhotoResult dataMimeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2039
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v37

    .line 2040
    .local v37, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v37, :cond_12

    .line 2041
    const-string v4, "data1"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2043
    .local v42, sDisplayName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "display_name"

    move-object/from16 v0, v42

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string v4, "data4"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2047
    .local v49, sPrefixName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "prefix_name"

    move-object/from16 v0, v49

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string v4, "data6"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 2051
    .local v50, sSuffixName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "suffix_name"

    move-object/from16 v0, v50

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string v4, "data2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2055
    .local v44, sGivenName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "given_name"

    move-object/from16 v0, v44

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string v4, "data5"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2059
    .local v45, sMiddleName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "middle_name"

    move-object/from16 v0, v45

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    const-string v4, "data3"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2063
    .local v43, sFamilyName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "family_name"

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    const-string v4, "data7"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2067
    .local v47, sPhoneticGivenName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "phonetic_given_name"

    move-object/from16 v0, v47

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    const-string v4, "data8"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2071
    .local v48, sPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "phonetic_middle_name"

    move-object/from16 v0, v48

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    const-string v4, "data9"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2075
    .local v46, sPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "phonetic_family_name"

    move-object/from16 v0, v46

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    const-string v4, "_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 2079
    .local v28, lNameId:Ljava/lang/Long;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName_Id:Ljava/util/ArrayList;

    move/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2080
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v23, :cond_12

    .line 2081
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "display_name"

    move-object/from16 v0, v42

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "prefix_name"

    move-object/from16 v0, v49

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "suffix_name"

    move-object/from16 v0, v50

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "given_name"

    move-object/from16 v0, v44

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "middle_name"

    move-object/from16 v0, v45

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "family_name"

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "phonetic_given_name"

    move-object/from16 v0, v47

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "phonetic_middle_name"

    move-object/from16 v0, v48

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName:Ljava/util/Map;

    const-string v5, "phonetic_family_name"

    move-object/from16 v0, v46

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactName_Id:Ljava/lang/Long;

    goto/16 :goto_9

    .line 2009
    .end local v14           #csDisplayLabel:Ljava/lang/CharSequence;
    .end local v18           #dataMimeType:Ljava/lang/String;
    .end local v23           #googlePlus:Z
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v27           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v28           #lNameId:Ljava/lang/Long;
    .end local v31           #lSnRawContactId:J
    .end local v37           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v40           #readonly:Z
    .end local v42           #sDisplayName:Ljava/lang/String;
    .end local v43           #sFamilyName:Ljava/lang/String;
    .end local v44           #sGivenName:Ljava/lang/String;
    .end local v45           #sMiddleName:Ljava/lang/String;
    .end local v46           #sPhoneticFamilyName:Ljava/lang/String;
    .end local v47           #sPhoneticGivenName:Ljava/lang/String;
    .end local v48           #sPhoneticMiddleName:Ljava/lang/String;
    .end local v49           #sPrefixName:Ljava/lang/String;
    .end local v50           #sSuffixName:Ljava/lang/String;
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 2028
    .restart local v14       #csDisplayLabel:Ljava/lang/CharSequence;
    .restart local v23       #googlePlus:Z
    .restart local v31       #lSnRawContactId:J
    :cond_14
    const/16 v40, 0x0

    goto/16 :goto_8

    .line 2094
    .restart local v18       #dataMimeType:Ljava/lang/String;
    .restart local v25       #i$:Ljava/util/Iterator;
    .restart local v27       #kind:Lcom/android/htccontacts/model/DataKind;
    .restart local v40       #readonly:Z
    :cond_15
    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2099
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v37

    .line 2100
    .restart local v37       #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v37, :cond_12

    .line 2101
    const-string v4, "_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 2103
    .local v29, lPhotoId:J
    const/4 v4, 0x0

    move-wide/from16 v0, v29

    invoke-static {v0, v1, v4}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2104
    .local v10, bmPhoto:Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2105
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2106
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v23, :cond_12

    .line 2107
    move-object/from16 v0, v41

    iput-object v10, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto:Landroid/graphics/Bitmap;

    .line 2108
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    goto/16 :goto_9

    .line 1999
    .end local v10           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v18           #dataMimeType:Ljava/lang/String;
    .end local v27           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v29           #lPhotoId:J
    .end local v37           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1849
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 2122
    if-nez p2, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2123
    :cond_1
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindNamePhoto(Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;)V

    .line 2125
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupHeader()V

    .line 2126
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2400(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 2127
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setQueryNamePhotoTaskDone(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1849
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1859
    if-eqz p1, :cond_0

    .line 1860
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setQueryNamePhotoTaskDone(Z)V

    .line 1862
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1849
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;->onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method
