.class public Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/htccontacts/util/ContactsSetupWizard;",
        ">;"
    }
.end annotation


# instance fields
.field private isSDNArray:[Z

.field private mProgress:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSDNArray:[Z

    .line 723
    return-void
.end method

.method private static final isSIMSDNContact(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 851
    if-eqz p0, :cond_0

    const-string v0, "SIM_SDN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 716
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)Ljava/util/ArrayList;
    .locals 35
    .parameter "target"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/util/ContactsSetupWizard;",
            "[",
            "Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    move-object/from16 v14, p1

    .line 752
    .local v14, context:Landroid/content/Context;
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 753
    .local v34, values:Landroid/content/ContentValues;
    invoke-virtual {v14}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    .line 757
    .local v30, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    aget-object v32, p2, v2

    .line 758
    .local v32, set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    if-eqz v32, :cond_0

    .line 759
    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v17

    .line 760
    .local v17, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "com.android.contacts"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 762
    .end local v17           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-eqz v2, :cond_1

    .line 763
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v29, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v16, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 766
    .local v8, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    iget-object v2, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 767
    .local v19, g1:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 768
    .local v26, k1:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 769
    .local v11, b1:Ljava/lang/Boolean;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 790
    .end local v8           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    .end local v11           #b1:Ljava/lang/Boolean;
    .end local v16           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v19           #g1:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v26           #k1:Ljava/lang/String;
    .end local v29           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    :catch_0
    move-exception v18

    .line 791
    .local v18, e:Landroid/os/RemoteException;
    const-string v2, "ContactsSetupWizard"

    const-string v3, "Problem saving display groups"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_2
    #calls: Lcom/android/htccontacts/util/ContactsSetupWizard;->checkIfNeedImportSIMContacts()V
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$000(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    .line 798
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->isImportSIM:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$900(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 800
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v25, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .line 803
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 804
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ext_account_name"

    aput-object v6, v4, v5

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 818
    :goto_3
    if-nez v15, :cond_6

    const/16 v25, 0x0

    .line 846
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v25           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4
    return-object v25

    .line 772
    .restart local v8       #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    .restart local v16       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v29       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32       #set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    :cond_2
    :try_start_2
    iget-object v2, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 773
    .local v20, g2:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 774
    .local v27, k2:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 775
    .local v12, b2:Ljava/lang/Boolean;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 792
    .end local v8           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    .end local v12           #b2:Ljava/lang/Boolean;
    .end local v16           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v20           #g2:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v27           #k2:Ljava/lang/String;
    .end local v29           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    :catch_1
    move-exception v18

    .line 793
    .local v18, e:Landroid/content/OperationApplicationException;
    const-string v2, "ContactsSetupWizard"

    const-string v3, "Problem saving display groups"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 778
    .end local v18           #e:Landroid/content/OperationApplicationException;
    .restart local v8       #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    .restart local v16       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v29       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32       #set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    :cond_3
    :try_start_3
    iget-object v2, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    if-eqz v2, :cond_4

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    invoke-virtual {v3, v14}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 780
    .local v28, k3:Ljava/lang/String;
    iget-object v2, v8, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 781
    .local v13, b3:Ljava/lang/Boolean;
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v13           #b3:Ljava/lang/Boolean;
    .end local v28           #k3:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/android/htccontacts/util/ContactsUtils;->userProfiling_Contact_View_Option([Ljava/lang/String;[Ljava/lang/Boolean;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 808
    .end local v8           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    .end local v16           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v29           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #set:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v25       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v15

    goto/16 :goto_3

    .line 811
    :catch_2
    move-exception v18

    .line 814
    .local v18, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_3

    .line 820
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v33

    .line 821
    .local v33, size:I
    const-string v2, "ext_account_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 822
    .local v10, accountNameIndex:I
    if-eqz v33, :cond_7

    .line 823
    move/from16 v0, v33

    new-array v2, v0, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSDNArray:[Z

    .line 824
    :cond_7
    const/16 v31, 0x0

    .line 826
    .local v31, sdnArrayIndex:I
    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 827
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 828
    .local v23, id:J
    move-wide/from16 v0, v23

    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const/4 v2, -0x1

    if-eq v10, v2, :cond_8

    .line 830
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSDNArray:[Z

    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSIMSDNContact(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v31

    .line 836
    .end local v9           #accountName:Ljava/lang/String;
    :goto_7
    add-int/lit8 v31, v31, 0x1

    .line 837
    goto :goto_6

    .line 834
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSDNArray:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v31

    goto :goto_7

    .line 838
    .end local v23           #id:J
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 839
    const/4 v15, 0x0

    .line 841
    goto/16 :goto_4

    .line 846
    .end local v10           #accountNameIndex:I
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v25           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31           #sdnArrayIndex:I
    .end local v33           #size:I
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_4
.end method

.method protected onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/util/ContactsSetupWizard;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p1

    .line 880
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_0

    .line 882
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .local v1, importIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$800()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 884
    const-string v2, "account_name"

    invoke-static {}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$800()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v2, "account_type"

    invoke-static {}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$800()Lcom/android/htccontacts/model/AccountWithDataSet;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    :goto_0
    const-string v2, "importSIMByIDList"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 892
    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 894
    const-string v2, "SELECTED_SIM_CONTACT_IS_SDN"

    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->isSDNArray:[Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 896
    invoke-virtual {p1, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 899
    .end local v1           #importIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->finish()V

    .line 901
    return-void

    .line 887
    .restart local v1       #importIntent:Landroid/content/Intent;
    :cond_1
    const-string v2, "account_name"

    const-string v3, "pcsc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v2, "account_type"

    const-string v3, "com.htc.android.pcsc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 716
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 728
    move-object v0, p1

    .line 741
    .local v0, context:Landroid/content/Context;
    const/16 v1, 0x1e61

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->showDialog(I)V

    .line 746
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 716
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateTask;->onPreExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    return-void
.end method
