.class public Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ui/ContactsPreferencesActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1004
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateTask;->doInBackground(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;[Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;[Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;)Ljava/lang/Void;
    .locals 23
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1032
    move-object/from16 v6, p1

    .line 1033
    .local v6, context:Landroid/content/Context;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1034
    .local v20, values:Landroid/content/ContentValues;
    invoke-virtual {v6}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1038
    .local v18, resolver:Landroid/content/ContentResolver;
    const/16 v21, 0x0

    :try_start_0
    aget-object v19, p2, v21

    .line 1039
    .local v19, set:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    if-eqz v19, :cond_0

    .line 1040
    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v8

    .line 1041
    .local v8, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v21, "com.android.contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1043
    .end local v8           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    sget-boolean v21, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-eqz v21, :cond_2

    .line 1044
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v17, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    .line 1047
    .local v2, account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1048
    .local v10, g1:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10, v6}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1049
    .local v14, k1:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getVisible()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1050
    .local v3, b1:Ljava/lang/Boolean;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1069
    .end local v2           #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    .end local v3           #b1:Ljava/lang/Boolean;
    .end local v7           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v10           #g1:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #k1:Ljava/lang/String;
    .end local v17           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #set:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    :catch_0
    move-exception v9

    .line 1070
    .local v9, e:Landroid/os/RemoteException;
    const-string v21, "ContactsPreferencesActivity"

    const-string v22, "Problem saving display groups"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_2
    :goto_2
    const/16 v21, 0x0

    return-object v21

    .line 1053
    .restart local v2       #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    .restart local v7       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #set:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    :cond_3
    :try_start_1
    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1054
    .local v11, g2:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v6}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1055
    .local v15, k2:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getVisible()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1056
    .local v4, b2:Ljava/lang/Boolean;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1071
    .end local v2           #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    .end local v4           #b2:Ljava/lang/Boolean;
    .end local v7           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v11           #g2:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #k2:Ljava/lang/String;
    .end local v17           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #set:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    :catch_1
    move-exception v9

    .line 1072
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v21, "ContactsPreferencesActivity"

    const-string v22, "Problem saving display groups"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1059
    .end local v9           #e:Landroid/content/OperationApplicationException;
    .restart local v2       #account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
    .restart local v7       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #set:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountSet;
    :cond_4
    :try_start_2
    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1060
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1061
    .local v16, k3:Ljava/lang/String;
    iget-object v0, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getVisible()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1062
    .local v5, b3:Ljava/lang/Boolean;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Ljava/lang/Void;)V
    .locals 5
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1083
    move-object v0, p1

    .line 1098
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    iget-object v1, p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x22b8

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1103
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 997
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateTask;->onPostExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 1009
    move-object v0, p1

    .line 1022
    .local v0, context:Landroid/content/Context;
    const/16 v1, 0x1e61

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->showDialog(I)V

    .line 1027
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 997
    check-cast p1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$UpdateTask;->onPreExecute(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    return-void
.end method
