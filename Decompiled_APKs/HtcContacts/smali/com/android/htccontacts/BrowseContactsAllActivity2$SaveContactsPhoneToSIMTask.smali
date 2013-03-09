.class Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveContactsPhoneToSIMTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/BrowseContactsAllActivity2;",
        ">;"
    }
.end annotation


# instance fields
.field progressRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field saveNum:I

.field toastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V
    .locals 1
    .parameter "activity"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 2995
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 2990
    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->progressRef:Ljava/lang/ref/WeakReference;

    .line 2991
    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->toastRef:Ljava/lang/ref/WeakReference;

    .line 2992
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->saveNum:I

    .line 2996
    iput p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->saveNum:I

    .line 2997
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 42
    .parameter "target"
    .parameter "params"

    .prologue
    .line 3013
    const/4 v3, 0x0

    aget-object v23, p2, v3

    check-cast v23, Ljava/util/ArrayList;

    .line 3014
    .local v23, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 3015
    .local v28, errorNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 3016
    .local v40, size:I
    if-eqz v23, :cond_0

    if-nez v40, :cond_1

    .line 3017
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3134
    :goto_0
    return-object v3

    .line 3021
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->acquireWakeLock()V

    .line 3024
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3025
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "contact_id IN ("

    .line 3026
    .local v5, where:Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, index:I
    :goto_1
    move/from16 v0, v32

    move/from16 v1, v40

    if-ge v0, v1, :cond_3

    .line 3027
    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 3028
    .local v22, contactId:I
    add-int/lit8 v3, v40, -0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_2

    .line 3029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3026
    :goto_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 3031
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 3034
    .end local v22           #contactId:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3035
    const/16 v27, 0x0

    .line 3036
    .local v27, entityIterator:Landroid/content/EntityIterator;
    const/16 v38, 0x0

    .line 3038
    .local v38, rawContactId:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v27

    .line 3042
    const/16 v34, 0x1

    .line 3043
    .local v34, last_result:I
    :goto_3
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3044
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Entity;

    .line 3045
    .local v26, entity:Landroid/content/Entity;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 3046
    .local v25, entValues:Landroid/content/ContentValues;
    const-string v3, "contact_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3048
    const/4 v11, 0x0

    .line 3049
    .local v11, name:Ljava/lang/String;
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 3050
    .local v19, Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 3051
    .local v18, Emails:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/Entity$NamedContentValues;

    .line 3053
    .local v37, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    .line 3054
    .local v24, contentValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3056
    .local v33, key:Ljava/lang/String;
    if-eqz v33, :cond_4

    .line 3057
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3058
    const-string v3, "data1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3061
    :cond_5
    :goto_5
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3062
    const-string v3, "data1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3059
    :cond_6
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3060
    const-string v3, "data1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3067
    .end local v24           #contentValues:Landroid/content/ContentValues;
    .end local v33           #key:Ljava/lang/String;
    .end local v37           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 3068
    const/16 v39, 0x1

    .line 3069
    .local v39, result:I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .local v20, arr$:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v35, v0

    .local v35, len$:I
    const/16 v30, 0x0

    .local v30, i$:I
    move/from16 v31, v30

    .end local v20           #arr$:[Ljava/lang/String;
    .end local v30           #i$:I
    .end local v35           #len$:I
    .local v31, i$:I
    :goto_6
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    aget-object v7, v20, v31

    .line 3070
    .local v7, number:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_e

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3071
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .local v21, arr$:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v36, v0

    .local v36, len$:I
    const/16 v30, 0x0

    .end local v31           #i$:I
    .restart local v30       #i$:I
    :goto_7
    move/from16 v0, v30

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    aget-object v10, v21, v30

    .line 3072
    .local v10, email:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v6 .. v11}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7200(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v39

    .line 3073
    const/4 v3, 0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_d

    .line 3074
    move/from16 v34, v39

    .line 3075
    const/4 v3, 0x5

    move/from16 v0, v39

    if-eq v0, v3, :cond_8

    const/16 v3, 0x8

    move/from16 v0, v39

    if-ne v0, v3, :cond_d

    .line 3084
    .end local v10           #email:Ljava/lang/String;
    .end local v21           #arr$:[Ljava/lang/String;
    .end local v30           #i$:I
    .end local v36           #len$:I
    :cond_8
    :goto_8
    const/4 v3, 0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_f

    .line 3085
    move/from16 v34, v39

    .line 3086
    const/4 v3, 0x5

    move/from16 v0, v39

    if-ne v0, v3, :cond_f

    .line 3092
    .end local v7           #number:Ljava/lang/String;
    :cond_9
    const/4 v3, 0x6

    move/from16 v0, v39

    if-ne v0, v3, :cond_a

    .line 3093
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    :cond_a
    const/4 v3, 0x5

    move/from16 v0, v34

    if-ne v0, v3, :cond_10

    .line 3107
    .end local v11           #name:Ljava/lang/String;
    .end local v18           #Emails:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19           #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25           #entValues:Landroid/content/ContentValues;
    .end local v26           #entity:Landroid/content/Entity;
    .end local v39           #result:I
    :cond_b
    if-eqz v27, :cond_c

    .line 3108
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V

    .line 3112
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_13

    .line 3113
    move-object/from16 v0, p1

    move/from16 v1, v34

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->getSaveToSimResultString(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7300(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)Ljava/lang/String;

    move-result-object v29

    .line 3114
    .local v29, error_msg:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    const/4 v3, 0x6

    move/from16 v0, v34

    if-ne v0, v3, :cond_12

    .line 3115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 3116
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3117
    .restart local v11       #name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_9

    .line 3071
    .end local v29           #error_msg:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v10       #email:Ljava/lang/String;
    .restart local v18       #Emails:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v19       #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v21       #arr$:[Ljava/lang/String;
    .restart local v25       #entValues:Landroid/content/ContentValues;
    .restart local v26       #entity:Landroid/content/Entity;
    .local v30, i$:I
    .restart local v36       #len$:I
    .restart local v39       #result:I
    :cond_d
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_7

    .line 3081
    .end local v10           #email:Ljava/lang/String;
    .end local v21           #arr$:[Ljava/lang/String;
    .end local v30           #i$:I
    .end local v36           #len$:I
    .restart local v31       #i$:I
    :cond_e
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object/from16 v17, v11

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v12 .. v17}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7200(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v39

    goto/16 :goto_8

    .line 3069
    .end local v31           #i$:I
    :cond_f
    add-int/lit8 v30, v31, 0x1

    .restart local v30       #i$:I
    move/from16 v31, v30

    .end local v30           #i$:I
    .restart local v31       #i$:I
    goto/16 :goto_6

    .line 3100
    .end local v7           #number:Ljava/lang/String;
    .end local v31           #i$:I
    .end local v39           #result:I
    :cond_10
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 3119
    .end local v11           #name:Ljava/lang/String;
    .end local v18           #Emails:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19           #Numbers:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v25           #entValues:Landroid/content/ContentValues;
    .end local v26           #entity:Landroid/content/Entity;
    .restart local v29       #error_msg:Ljava/lang/String;
    .local v30, i$:Ljava/util/Iterator;
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 3121
    .end local v30           #i$:Ljava/util/Iterator;
    :cond_12
    const-string v3, "BrowseContactsAllActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last result code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", error message:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/widget/Toast;

    .line 3123
    .local v41, toast:Landroid/widget/Toast;
    if-eqz v41, :cond_13

    .line 3124
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3125
    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 3131
    .end local v29           #error_msg:Ljava/lang/String;
    .end local v41           #toast:Landroid/widget/Toast;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->releaseWakeLock()V

    .line 3134
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2989
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Integer;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 3139
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 3140
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3141
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3143
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2989
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 3001
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/16 v2, 0x65

    const v3, 0x7f0a0289

    const v4, 0x7f0a028a

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->createProgressDialog(III)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->progressRef:Ljava/lang/ref/WeakReference;

    .line 3002
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->createToast()Landroid/widget/Toast;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->toastRef:Ljava/lang/ref/WeakReference;

    .line 3003
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 3004
    .local v0, d:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mNoFreeSIMEmailFields:Z
    invoke-static {p1, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7102(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z

    .line 3005
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->saveNum:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 3006
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3007
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 3009
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2989
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->onPreExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2989
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 3147
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$SaveContactsPhoneToSIMTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 3148
    .local v0, d:Lcom/htc/app/HtcProgressDialog;
    if-eqz v0, :cond_0

    .line 3149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 3152
    :cond_0
    return-void
.end method
