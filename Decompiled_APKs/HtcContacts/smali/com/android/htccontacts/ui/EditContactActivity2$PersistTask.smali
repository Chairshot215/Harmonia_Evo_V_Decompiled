.class public Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/model/EntityDeltaList;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERSIST_TRIES:I = 0x3

.field private static final RESULT_FAILURE:I = 0x2

.field private static final RESULT_INVALID_PHONENUMBER:I = 0x3

.field private static final RESULT_SIM_ADN_FULL:I = 0x5

.field private static final RESULT_SIM_ANR_FULL:I = 0x7

.field private static final RESULT_SIM_EMAIL_FULL:I = 0x8

.field private static final RESULT_SIM_ERROR:I = 0x6

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final RESULT_UNCHANGED:I = 0x0

.field private static final RESULT_WITHOUT_VALID_DATA:I = 0x4


# instance fields
.field private errorData:Ljava/lang/String;

.field private progress:Lcom/htc/app/HtcProgressDialog;

.field private savingState:Lcom/android/htccontacts/model/EntityDeltaList;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 3312
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 3306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->errorData:Ljava/lang/String;

    .line 3313
    return-void
.end method

.method private getRawContactId(Lcom/android/htccontacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 9
    .parameter "state"
    .parameter
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/model/EntityDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .local p2, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v5, -0x1

    .line 3737
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v3

    .line 3738
    .local v3, rawContactId:J
    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 3761
    .end local v3           #rawContactId:J
    :goto_0
    return-wide v3

    .line 3743
    .restart local v3       #rawContactId:J
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3745
    .local v0, diffSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3746
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 3747
    .local v2, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3751
    if-eqz p3, :cond_1

    .line 3752
    aget-object v7, p3, v1

    if-eqz v7, :cond_1

    .line 3753
    aget-object v7, p3, v1

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    .line 3754
    aget-object v5, p3, v1

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    goto :goto_0

    .line 3745
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    move-wide v3, v5

    .line 3761
    goto :goto_0
.end method

.method private getSimRawContactId(Lcom/android/htccontacts/model/EntityDeltaList;Landroid/net/Uri;Landroid/content/ContentResolver;)J
    .locals 11
    .parameter "state"
    .parameter "resultUri"
    .parameter "cr"

    .prologue
    .line 3767
    const-string v0, "EditContactActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----resultUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v7

    .line 3770
    .local v7, rawContactId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    move-wide v0, v7

    .line 3793
    :goto_0
    return-wide v0

    .line 3775
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 3777
    .local v9, recordNumber:J
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceid = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3781
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3782
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3783
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3785
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3787
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_3

    move-wide v0, v7

    .line 3788
    goto :goto_0

    .line 3790
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #recordNumber:J
    :catch_0
    move-exception v0

    .line 3793
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkPhoneNumberValid(Lcom/android/htccontacts/model/EntityDeltaList;)Z
    .locals 8
    .parameter "state"

    .prologue
    .line 3863
    const/4 v3, 0x1

    .line 3864
    .local v3, isValid:Z
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 3865
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3866
    .local v6, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v6, :cond_0

    .line 3867
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3868
    .local v5, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3869
    const-string v7, "data1"

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3870
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->isValidNumber(Ljava/lang/String;)Z

    move-result v3

    .line 3871
    if-nez v3, :cond_3

    .line 3872
    iput-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->errorData:Ljava/lang/String;

    goto :goto_0

    .line 3876
    .end local v4           #number:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_1

    goto :goto_0

    .line 3881
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    return v3
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Lcom/android/htccontacts/model/EntityDeltaList;)Ljava/lang/Integer;
    .locals 74
    .parameter "target"
    .parameter "params"

    .prologue
    .line 3334
    move-object/from16 v16, p1

    .line 3335
    .local v16, context:Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    .line 3338
    .local v49, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    aget-object v58, p2, v4

    .line 3341
    .local v58, state:Lcom/android/htccontacts/model/EntityDeltaList;
    const/16 v62, 0x0

    .line 3342
    .local v62, targetAccountName:Ljava/lang/String;
    const/16 v63, 0x0

    .line 3343
    .local v63, targetAccountType:Ljava/lang/String;
    const/16 v64, 0x0

    .line 3344
    .local v64, targetIsStarred:Z
    if-eqz v58, :cond_1

    const/4 v4, 0x1

    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 3345
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3348
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isDispalyNameChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3349
    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/model/EntityDelta;

    .line 3350
    .local v23, entity:Lcom/android/htccontacts/model/EntityDelta;
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3351
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 3352
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_name"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 3354
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "starred"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 3355
    .local v12, Starred:Ljava/lang/Integer;
    if-eqz v12, :cond_1

    .line 3356
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_7

    const/16 v64, 0x1

    .line 3364
    .end local v12           #Starred:Ljava/lang/Integer;
    .end local v23           #entity:Lcom/android/htccontacts/model/EntityDelta;
    :cond_1
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v57

    .line 3365
    .local v57, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->trimEmpty(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 3370
    if-eqz v58, :cond_5

    const/4 v4, 0x1

    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    if-ne v4, v6, :cond_5

    .line 3371
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    if-eqz v4, :cond_5

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3374
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isDispalyNameChanged()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3375
    const/4 v4, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/model/EntityDelta;

    .line 3376
    .restart local v23       #entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_name"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3377
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    move-object/from16 v0, v63

    invoke-virtual {v4, v6, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_name"

    move-object/from16 v0, v62

    invoke-virtual {v4, v6, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    :cond_3
    if-eqz v64, :cond_4

    .line 3381
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "starred"

    if-eqz v64, :cond_8

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v7, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 3383
    :cond_4
    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v43

    .line 3384
    .local v43, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v43, :cond_5

    .line 3385
    const-string v4, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const-string v4, "data1"

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNewDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    const-string v6, "data4"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    const-string v6, "data6"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const-string v6, "data2"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    const-string v6, "data5"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    const-string v6, "data3"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    const-string v6, "data7"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    const-string v6, "data8"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    const-string v6, "data9"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v6, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    .end local v23           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v43           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    if-eqz v58, :cond_15

    .line 3402
    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v37

    .line 3403
    .local v37, nSize:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 3404
    move-object/from16 v0, v58

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/model/EntityDelta;

    .line 3405
    .restart local v23       #entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v71

    .line 3406
    .local v71, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "_id"

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 3407
    .local v11, LrawContactId:Ljava/lang/Long;
    if-nez v11, :cond_9

    .line 3403
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 3356
    .end local v11           #LrawContactId:Ljava/lang/Long;
    .end local v27           #i:I
    .end local v37           #nSize:I
    .end local v57           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v71           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v12       #Starred:Ljava/lang/Integer;
    :cond_7
    const/16 v64, 0x0

    goto/16 :goto_0

    .line 3381
    .end local v12           #Starred:Ljava/lang/Integer;
    .restart local v57       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3408
    .restart local v11       #LrawContactId:Ljava/lang/Long;
    .restart local v27       #i:I
    .restart local v37       #nSize:I
    .restart local v71       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 3410
    .local v44, rawContactId:J
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mHiddenHtcNotes:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4000(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 3411
    .local v25, hiddenHtcNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v41

    .line 3412
    .local v41, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v41, :cond_b

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 3414
    .local v42, noteListSize:I
    :goto_3
    const/16 v73, 0x0

    .line 3415
    .local v73, visibleNoteListSize:I
    const/16 v35, 0x0

    .local v35, m:I
    :goto_4
    move/from16 v0, v35

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    .line 3416
    move-object/from16 v0, v41

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3417
    .local v72, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v72 .. v72}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3418
    add-int/lit8 v73, v73, 0x1

    .line 3415
    :cond_a
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 3412
    .end local v35           #m:I
    .end local v42           #noteListSize:I
    .end local v72           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v73           #visibleNoteListSize:I
    :cond_b
    const/16 v42, 0x0

    goto :goto_3

    .line 3423
    .restart local v35       #m:I
    .restart local v42       #noteListSize:I
    .restart local v73       #visibleNoteListSize:I
    :cond_c
    if-eqz v25, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 3424
    .local v26, hiddenHtcNoteListSize:I
    :goto_5
    move/from16 v0, v73

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 3425
    const-string v4, "account_type"

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3426
    .local v13, accountType:Ljava/lang/String;
    const-string v4, "data_set"

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3427
    .local v19, dataSet:Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v56

    .line 3429
    .local v56, source:Lcom/android/htccontacts/model/AccountType;
    const/16 v40, 0x0

    .line 3430
    .local v40, noteDataKind:Lcom/android/htccontacts/model/DataKind;
    invoke-virtual/range {v56 .. v56}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/htccontacts/model/DataKind;

    .line 3431
    .local v34, kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3432
    .local v18, dataMimeType:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3433
    move-object/from16 v40, v34

    .line 3437
    .end local v18           #dataMimeType:Ljava/lang/String;
    .end local v34           #kind:Lcom/android/htccontacts/model/DataKind;
    :cond_e
    if-eqz v40, :cond_11

    .line 3438
    const/16 v31, 0x0

    .local v31, j:I
    :goto_6
    sub-int v4, v26, v73

    move/from16 v0, v31

    if-ge v0, v4, :cond_10

    .line 3439
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3438
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 3423
    .end local v13           #accountType:Ljava/lang/String;
    .end local v19           #dataSet:Ljava/lang/String;
    .end local v26           #hiddenHtcNoteListSize:I
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #j:I
    .end local v40           #noteDataKind:Lcom/android/htccontacts/model/DataKind;
    .end local v56           #source:Lcom/android/htccontacts/model/AccountType;
    :cond_f
    const/16 v26, 0x0

    goto :goto_5

    .line 3441
    .restart local v13       #accountType:Ljava/lang/String;
    .restart local v19       #dataSet:Ljava/lang/String;
    .restart local v26       #hiddenHtcNoteListSize:I
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v31       #j:I
    .restart local v40       #noteDataKind:Lcom/android/htccontacts/model/DataKind;
    .restart local v56       #source:Lcom/android/htccontacts/model/AccountType;
    :cond_10
    if-eqz v41, :cond_13

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 3444
    .end local v13           #accountType:Ljava/lang/String;
    .end local v19           #dataSet:Ljava/lang/String;
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #j:I
    .end local v40           #noteDataKind:Lcom/android/htccontacts/model/DataKind;
    .end local v56           #source:Lcom/android/htccontacts/model/AccountType;
    :cond_11
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v42

    if-gt v0, v1, :cond_6

    .line 3445
    const/16 v32, 0x0

    .local v32, k1:I
    const/16 v33, 0x0

    .local v33, k2:I
    :goto_8
    move/from16 v0, v32

    move/from16 v1, v42

    if-ge v0, v1, :cond_6

    move/from16 v0, v33

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 3446
    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3447
    .restart local v72       #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v72 .. v72}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3448
    const-string v4, "data1"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 3449
    .local v39, note:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3450
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #note:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 3454
    .restart local v39       #note:Ljava/lang/String;
    :goto_9
    const-string v4, "data1"

    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    add-int/lit8 v33, v33, 0x1

    .line 3445
    .end local v39           #note:Ljava/lang/String;
    :cond_12
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 3441
    .end local v32           #k1:I
    .end local v33           #k2:I
    .end local v72           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v13       #accountType:Ljava/lang/String;
    .restart local v19       #dataSet:Ljava/lang/String;
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v31       #j:I
    .restart local v40       #noteDataKind:Lcom/android/htccontacts/model/DataKind;
    .restart local v56       #source:Lcom/android/htccontacts/model/AccountType;
    :cond_13
    const/16 v42, 0x0

    goto :goto_7

    .line 3452
    .end local v13           #accountType:Ljava/lang/String;
    .end local v19           #dataSet:Ljava/lang/String;
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v31           #j:I
    .end local v40           #noteDataKind:Lcom/android/htccontacts/model/DataKind;
    .end local v56           #source:Lcom/android/htccontacts/model/AccountType;
    .restart local v32       #k1:I
    .restart local v33       #k2:I
    .restart local v39       #note:Ljava/lang/String;
    .restart local v72       #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto :goto_9

    .line 3463
    .end local v11           #LrawContactId:Ljava/lang/Long;
    .end local v23           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v25           #hiddenHtcNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #hiddenHtcNoteListSize:I
    .end local v27           #i:I
    .end local v32           #k1:I
    .end local v33           #k2:I
    .end local v35           #m:I
    .end local v37           #nSize:I
    .end local v39           #note:Ljava/lang/String;
    .end local v41           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v42           #noteListSize:I
    .end local v44           #rawContactId:J
    .end local v71           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v72           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v73           #visibleNoteListSize:I
    :cond_15
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->trimAddContactEmpty(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 3466
    const/16 v67, 0x0

    .line 3468
    .local v67, trimState:Lcom/android/htccontacts/model/EntityDeltaList;
    const/4 v14, 0x1

    .line 3469
    .local v14, allIsTransient:Z
    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/model/EntityDelta;

    .line 3470
    .local v20, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v4

    if-nez v4, :cond_16

    .line 3471
    if-nez v67, :cond_17

    .line 3472
    invoke-static/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDeltaList;->fromSingle(Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v67

    .line 3479
    :cond_16
    :goto_b
    if-eqz v14, :cond_18

    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v14, 0x1

    :goto_c
    goto :goto_a

    .line 3475
    :cond_17
    move-object/from16 v0, v67

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3479
    :cond_18
    const/4 v14, 0x0

    goto :goto_c

    .line 3482
    .end local v20           #delta:Lcom/android/htccontacts/model/EntityDelta;
    :cond_19
    if-nez v67, :cond_1b

    if-nez v14, :cond_1b

    .line 3483
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 3731
    :cond_1a
    :goto_d
    return-object v50

    .line 3485
    :cond_1b
    if-nez v67, :cond_1c

    if-eqz v14, :cond_1c

    .line 3486
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    goto :goto_d

    .line 3489
    :cond_1c
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->getHandler()Landroid/os/Handler;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4400(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/os/Handler;

    move-result-object v69

    .line 3491
    .local v69, uihandler:Landroid/os/Handler;
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 3492
    .local v50, result:Ljava/lang/Integer;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->checkPhoneNumberValid(Lcom/android/htccontacts/model/EntityDeltaList;)Z

    move-result v30

    .line 3493
    .local v30, isValid:Z
    if-nez v30, :cond_1d

    .line 3494
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    goto :goto_d

    .line 3497
    :cond_1d
    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->savingState:Lcom/android/htccontacts/model/EntityDeltaList;

    .line 3499
    invoke-virtual/range {v67 .. v67}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v55

    .line 3500
    .local v55, size:I
    const/16 v51, 0x0

    .line 3501
    .local v51, resultSIMContactUri:Landroid/net/Uri;
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 3502
    .local v54, simRawContactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta;>;"
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_e
    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_24

    .line 3503
    move-object/from16 v0, v67

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/model/EntityDelta;

    .line 3504
    .restart local v20       #delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 3505
    .local v68, type:Ljava/lang/String;
    if-nez v68, :cond_1f

    .line 3502
    :cond_1e
    :goto_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 3506
    :cond_1f
    const-string v4, "com.anddroid.contacts.sim"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3507
    const v4, 0xf00001

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->progress:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    .line 3508
    .local v36, msg:Landroid/os/Message;
    move-object/from16 v0, v69

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3509
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->insertOrUpdateSIMContacts(Landroid/content/ContentResolver;Lcom/android/htccontacts/model/EntityDelta;)Landroid/net/Uri;

    move-result-object v70

    .line 3510
    .local v70, uri:Landroid/net/Uri;
    invoke-static/range {v70 .. v70}, Lcom/android/htccontacts/util/UpdateSIMStatus;->processSIMUpdateErrorUri(Landroid/net/Uri;)I

    move-result v59

    .line 3511
    .local v59, status:I
    const/4 v4, 0x5

    move/from16 v0, v59

    if-eq v0, v4, :cond_20

    const/4 v4, 0x6

    move/from16 v0, v59

    if-eq v0, v4, :cond_20

    const/4 v4, 0x7

    move/from16 v0, v59

    if-eq v0, v4, :cond_20

    const/16 v4, 0x8

    move/from16 v0, v59

    if-ne v0, v4, :cond_21

    .line 3515
    :cond_20
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    goto/16 :goto_d

    .line 3518
    :cond_21
    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v61

    .line 3519
    .local v61, success:Z
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_22

    if-eqz v61, :cond_22

    .line 3520
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    .line 3522
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v70

    move-object/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->getSimRawContactId(Lcom/android/htccontacts/model/EntityDeltaList;Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v47

    .line 3524
    .local v47, rawId:J
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v47

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v46

    .line 3526
    .local v46, rawContactUri:Landroid/net/Uri;
    const-wide/16 v6, 0x0

    cmp-long v4, v47, v6

    if-lez v4, :cond_1e

    .line 3528
    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 3533
    .local v15, contactLookupUri:Landroid/net/Uri;
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4500(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v65

    .line 3537
    .local v65, tempContactLookupUri:Landroid/net/Uri;
    if-eqz v65, :cond_23

    .line 3538
    move-object/from16 v15, v65

    .line 3540
    :cond_23
    move-object/from16 v51, v15

    goto/16 :goto_f

    .line 3547
    .end local v15           #contactLookupUri:Landroid/net/Uri;
    .end local v20           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v36           #msg:Landroid/os/Message;
    .end local v46           #rawContactUri:Landroid/net/Uri;
    .end local v47           #rawId:J
    .end local v59           #status:I
    .end local v61           #success:Z
    .end local v65           #tempContactLookupUri:Landroid/net/Uri;
    .end local v68           #type:Ljava/lang/String;
    .end local v70           #uri:Landroid/net/Uri;
    :cond_24
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_25

    .line 3548
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteSIMContactChangeIntent(Landroid/content/Context;J)V

    .line 3551
    :cond_25
    move-object/from16 v0, v67

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->removeAll(Ljava/util/Collection;)Z

    .line 3552
    invoke-virtual/range {v67 .. v67}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v4

    if-nez v4, :cond_27

    .line 3554
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    .line 3557
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 3558
    .local v29, intent:Landroid/content/Intent;
    if-eqz v51, :cond_26

    .line 3559
    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3560
    const-string v4, "is_sim"

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3562
    :cond_26
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_d

    .line 3572
    .end local v29           #intent:Landroid/content/Intent;
    :cond_27
    const/16 v66, 0x0

    .line 3575
    .local v66, tries:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->ensureStarredInAndroid(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDeltaList;)V

    .line 3577
    :goto_10
    const/4 v4, 0x3

    move/from16 v0, v66

    if-ge v0, v4, :cond_29

    .line 3580
    :try_start_0
    invoke-virtual/range {v67 .. v67}, Lcom/android/htccontacts/model/EntityDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v21

    .line 3582
    .local v21, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3583
    const v4, 0xf00001

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->progress:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    .line 3584
    .restart local v36       #msg:Landroid/os/Message;
    move-object/from16 v0, v69

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3587
    .end local v36           #msg:Landroid/os/Message;
    :cond_28
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 3588
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v52

    .line 3589
    .local v52, results:[Landroid/content/ContentProviderResult;
    if-nez v52, :cond_2c

    .line 3701
    .end local v21           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v52           #results:[Landroid/content/ContentProviderResult;
    :cond_29
    :goto_11
    const/4 v4, 0x2

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_1a

    .line 3702
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 3703
    .local v5, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v4

    if-eqz v4, :cond_2b

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5100(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2b

    .line 3705
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/htccontacts/link/MergeContact;->updateDBForName(Ljava/util/ArrayList;Z)V

    .line 3707
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_39

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-nez v4, :cond_2a

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3708
    :cond_2a
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 3709
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v4

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->hasNonSocialnetworkPhoto:Z

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->myContactRawId:J

    invoke-virtual/range {v4 .. v10}, Lcom/android/htccontacts/link/MergeContact;->updateDBForEditMyContactPhoto(Ljava/util/ArrayList;ZLjava/util/ArrayList;Landroid/graphics/Bitmap;J)V

    .line 3715
    :cond_2b
    :goto_12
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3717
    :try_start_1
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 3718
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v6

    move-object/from16 v0, p1

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->broadcastFavoriteChangeIntent(J)V
    invoke-static {v0, v6, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5000(Lcom/android/htccontacts/ui/EditContactActivity2;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3725
    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_d

    .line 3592
    .end local v5           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v52       #results:[Landroid/content/ContentProviderResult;
    :cond_2c
    :try_start_2
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 3593
    .restart local v29       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v21

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->getRawContactId(Lcom/android/htccontacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v44

    .line 3595
    .restart local v44       #rawContactId:J
    const-wide/16 v6, 0x0

    cmp-long v4, v6, v44

    if-ltz v4, :cond_2d

    .line 3596
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    goto/16 :goto_11

    .line 3599
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 3602
    .local v60, strRawContactId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->insertSelfToNewAddedGroups(J)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4700(Lcom/android/htccontacts/ui/EditContactActivity2;J)V

    .line 3605
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v44

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v46

    .line 3609
    .restart local v46       #rawContactUri:Landroid/net/Uri;
    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 3613
    .restart local v15       #contactLookupUri:Landroid/net/Uri;
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4800(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/htccontacts/util/LinkUtils;->getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v65

    .line 3614
    .restart local v65       #tempContactLookupUri:Landroid/net/Uri;
    if-eqz v65, :cond_2e

    .line 3615
    move-object/from16 v15, v65

    .line 3618
    :cond_2e
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3619
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->setResult(ILandroid/content/Intent;)V

    .line 3620
    if-eqz v15, :cond_31

    .line 3623
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3624
    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/model/EntityDelta;

    .line 3625
    .restart local v20       #delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v71

    .line 3626
    .restart local v71       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "account_type"

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3627
    .restart local v13       #accountType:Ljava/lang/String;
    const-string v4, "com.htc.android.myphonebook"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-eqz v4, :cond_2f

    .line 3630
    :try_start_3
    const-string v4, "EditContactActivity2"

    const-string v6, "Sleep 0.5 second before calling TMOClient.updateMyCommunityGroupMembers..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3634
    :goto_14
    :try_start_4
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$4900(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/TMOClient;->getInstance(Landroid/content/Context;)Lcom/htc/util/contacts/TMOClient;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Lcom/htc/util/contacts/TMOClient;->updateMyCommunityGroupMembers(Ljava/lang/String;)V

    .line 3641
    .end local v13           #accountType:Ljava/lang/String;
    .end local v20           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v71           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_30
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p1

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->broadcastFavoriteChangeIntent(J)V
    invoke-static {v0, v6, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5000(Lcom/android/htccontacts/ui/EditContactActivity2;J)V

    .line 3645
    .end local v15           #contactLookupUri:Landroid/net/Uri;
    .end local v29           #intent:Landroid/content/Intent;
    .end local v44           #rawContactId:J
    .end local v46           #rawContactUri:Landroid/net/Uri;
    .end local v52           #results:[Landroid/content/ContentProviderResult;
    .end local v60           #strRawContactId:Ljava/lang/String;
    .end local v65           #tempContactLookupUri:Landroid/net/Uri;
    :cond_31
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_32

    const/4 v4, 0x1

    :goto_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v50

    goto/16 :goto_11

    :cond_32
    const/4 v4, 0x0

    goto :goto_15

    .line 3648
    .end local v21           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v22

    .line 3650
    .local v22, e:Landroid/os/RemoteException;
    const-string v4, "EditContactActivity2"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 3653
    .end local v22           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    .line 3660
    .local v22, e:Landroid/content/OperationApplicationException;
    const-string v4, "EditContactActivity2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version consistency failed, re-parenting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    new-instance v53, Ljava/lang/StringBuilder;

    const-string v4, "_id IN("

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3662
    .local v53, sb:Ljava/lang/StringBuilder;
    const/16 v24, 0x1

    .line 3663
    .local v24, first:Z
    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v17

    .line 3664
    .local v17, count:I
    const/16 v27, 0x0

    :goto_16
    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_35

    .line 3665
    move-object/from16 v0, v58

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v44

    .line 3666
    .local v44, rawContactId:Ljava/lang/Long;
    if-eqz v44, :cond_34

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_34

    .line 3667
    if-nez v24, :cond_33

    .line 3668
    const/16 v4, 0x2c

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3670
    :cond_33
    move-object/from16 v0, v53

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3671
    const/16 v24, 0x0

    .line 3664
    :cond_34
    add-int/lit8 v27, v27, 0x1

    goto :goto_16

    .line 3674
    .end local v44           #rawContactId:Ljava/lang/Long;
    :cond_35
    const-string v4, ")"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    if-eqz v24, :cond_36

    .line 3677
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Version consistency failed for a new contact"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3680
    :cond_36
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    :goto_17
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v49

    invoke-static {v4, v0, v6, v7, v8}, Lcom/android/htccontacts/model/EntityDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v38

    .line 3685
    .local v38, newState:Lcom/android/htccontacts/model/EntityDeltaList;
    move-object/from16 v0, v38

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->mergeAfter(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v58

    .line 3688
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3689
    invoke-virtual/range {v58 .. v58}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_18
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/model/EntityDelta;

    .line 3690
    .restart local v20       #delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_18

    .line 3680
    .end local v20           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v38           #newState:Lcom/android/htccontacts/model/EntityDeltaList;
    :cond_37
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_17

    .line 3693
    .restart local v38       #newState:Lcom/android/htccontacts/model/EntityDeltaList;
    :cond_38
    add-int/lit8 v66, v66, 0x1

    .line 3697
    goto/16 :goto_10

    .line 3694
    .end local v17           #count:I
    .end local v22           #e:Landroid/content/OperationApplicationException;
    .end local v24           #first:Z
    .end local v38           #newState:Lcom/android/htccontacts/model/EntityDeltaList;
    .end local v53           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v22

    .line 3695
    .local v22, e:Ljava/lang/Exception;
    const-string v4, "EditContactActivity2"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 3712
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_39
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/link/MergeContact;->updateDBForEditPhoto(Ljava/util/ArrayList;)V

    goto/16 :goto_12

    .line 3720
    :catch_3
    move-exception v22

    .line 3721
    .local v22, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_13

    .line 3725
    .end local v22           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v4

    .line 3722
    :catch_4
    move-exception v22

    .line 3723
    .local v22, e:Landroid/content/OperationApplicationException;
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_13

    .line 3632
    .end local v5           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v22           #e:Landroid/content/OperationApplicationException;
    .restart local v13       #accountType:Ljava/lang/String;
    .restart local v15       #contactLookupUri:Landroid/net/Uri;
    .restart local v20       #delta:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v21       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v29       #intent:Landroid/content/Intent;
    .local v44, rawContactId:J
    .restart local v46       #rawContactUri:Landroid/net/Uri;
    .restart local v52       #results:[Landroid/content/ContentProviderResult;
    .restart local v60       #strRawContactId:Ljava/lang/String;
    .restart local v65       #tempContactLookupUri:Landroid/net/Uri;
    .restart local v71       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :catch_5
    move-exception v4

    goto/16 :goto_14
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3292
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/model/EntityDeltaList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Lcom/android/htccontacts/model/EntityDeltaList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected ensureStarredInAndroid(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDeltaList;)V
    .locals 5
    .parameter "context"
    .parameter "state"

    .prologue
    .line 3852
    invoke-virtual {p2}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 3853
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 3854
    .local v3, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3855
    .local v2, type:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "com.google"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3856
    invoke-static {p1, v0}, Lcom/android/htccontacts/model/GoogleAccountType;->attempStarred(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDelta;)V

    goto :goto_0

    .line 3859
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1
    return-void
.end method

.method protected includeExchangeContacts(Lcom/android/htccontacts/model/EntityDeltaList;)Z
    .locals 6
    .parameter "state"

    .prologue
    .line 3840
    const/4 v2, 0x0

    .line 3841
    .local v2, result:Z
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 3842
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 3843
    .local v4, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3844
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "com.htc.android.mail.eas"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3845
    const/4 v2, 0x1

    .line 3849
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1
    return v2
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Ljava/lang/Integer;)V
    .locals 7
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3800
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3802
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/htccontacts/util/UpdateSIMStatus;->getSIMErrorDescirptionResource(I)I

    move-result v3

    .line 3804
    .local v3, resId:I
    if-lez v3, :cond_0

    invoke-static {v0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3806
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 3807
    invoke-virtual {p1, v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->setResult(I)V

    .line 3812
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isNewContact:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 3813
    invoke-static {}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->doSaving()V

    .line 3816
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->savingState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->includeExchangeContacts(Lcom/android/htccontacts/model/EntityDeltaList;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3817
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 3820
    :cond_3
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 3821
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.MY_CONTACT_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3822
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3825
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_6

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$5500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3826
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->progress:Lcom/htc/app/HtcProgressDialog;

    .line 3827
    .local v2, pd:Lcom/htc/app/HtcProgressDialog;
    if-eqz v2, :cond_5

    .line 3828
    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 3829
    const/4 v2, 0x0

    .line 3833
    :cond_5
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    .line 3837
    .end local v2           #pd:Lcom/htc/app/HtcProgressDialog;
    :cond_6
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3292
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 3321
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3322
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0054

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3323
    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->progress:Lcom/htc/app/HtcProgressDialog;

    .line 3324
    const/4 v0, 0x0

    .line 3329
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3292
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->onPreExecute(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    return-void
.end method
