.class Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "GroupPeopleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupPeopleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateFavoriteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/group/GroupPeopleView;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1200
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->progressDialogRef:Ljava/lang/ref/WeakReference;

    .line 1201
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/group/GroupPeopleView;[Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;)Ljava/lang/Integer;
    .locals 19
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1216
    const/4 v1, 0x0

    aget-object v14, p2, v1

    .line 1217
    .local v14, pack:Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;
    iget-object v2, v14, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->addedList:Ljava/util/ArrayList;

    .line 1218
    .local v2, addedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, v14, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->removeList:Ljava/util/ArrayList;

    .line 1219
    .local v3, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, v14, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->addedtitleList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1220
    .local v16, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v14, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->targetName:Ljava/lang/String;

    .line 1221
    .local v4, targetName:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    .line 1222
    .local v10, isFavorite:Z
    :goto_0
    if-eqz v4, :cond_3

    const-string v1, "Frequent Contacts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v11, 0x1

    .line 1225
    .local v11, isSmartGroup:Z
    :goto_1
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1226
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$800(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainAddableGroupMembers(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1230
    .local v7, appendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1231
    .local v15, sets:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1232
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1235
    :cond_0
    if-eqz v2, :cond_5

    .line 1236
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1237
    .local v9, id:Ljava/lang/Long;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v1, v5, v17

    if-lez v1, :cond_1

    .line 1238
    invoke-virtual {v15, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1239
    const-string v1, "mysense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1221
    .end local v7           #appendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #id:Ljava/lang/Long;
    .end local v10           #isFavorite:Z
    .end local v11           #isSmartGroup:Z
    .end local v15           #sets:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1222
    .restart local v10       #isFavorite:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 1242
    .restart local v7       #appendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #isSmartGroup:Z
    .restart local v15       #sets:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1245
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v13, newIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1248
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1249
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1250
    .restart local v9       #id:Ljava/lang/Long;
    if-eqz v9, :cond_6

    .line 1251
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    const-string v1, "mysense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1255
    .end local v9           #id:Ljava/lang/Long;
    :cond_7
    move-object v2, v13

    .line 1259
    .end local v7           #appendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v13           #newIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #sets:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_8
    if-eqz v10, :cond_9

    .line 1260
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$900(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/htccontacts/group/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 1268
    :goto_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1262
    :cond_9
    if-eqz v11, :cond_a

    .line 1263
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->applyBatchDeleteSmartGroupMember(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 1266
    :cond_a
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$1000(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupIsReadOnly:I

    move-object v5, v4

    invoke-static/range {v1 .. v6}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1196
    check-cast p1, Lcom/android/htccontacts/group/GroupPeopleView;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->doInBackground(Lcom/android/htccontacts/group/GroupPeopleView;[Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/Integer;)V
    .locals 3
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1273
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1275
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$1100(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p1}, Lcom/android/htccontacts/group/GroupPeopleView;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->progressDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 1279
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1283
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1196
    check-cast p1, Lcom/android/htccontacts/group/GroupPeopleView;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->onPostExecute(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 1205
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 1206
    const v1, 0x7f0a0128

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/htccontacts/group/GroupPeopleView;->obtainProgressDialog(Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;
    invoke-static {p1, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->access$700(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->progressDialogRef:Ljava/lang/ref/WeakReference;

    .line 1207
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->progressDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 1208
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1211
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1196
    check-cast p1, Lcom/android/htccontacts/group/GroupPeopleView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->onPreExecute(Lcom/android/htccontacts/group/GroupPeopleView;)V

    return-void
.end method
