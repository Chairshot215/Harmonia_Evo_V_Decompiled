.class Lcom/android/htccontacts/ui/EditContactActivity2$10;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->doEditMyContactName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
    .parameter
    .parameter "view"
    .parameter "which"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1276
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1277
    .local v9, nSize:I
    move/from16 v0, p3

    if-ge v0, v9, :cond_2

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "prefix_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1279
    .local v14, prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "suffix_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1280
    .local v16, suffix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "given_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1281
    .local v5, given:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "middle_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1282
    .local v8, middle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "family_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1283
    .local v4, family:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "phonetic_given_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1284
    .local v12, phoneticgiven:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "phonetic_middle_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1285
    .local v13, phoneticmiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "phonetic_family_name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1286
    .local v11, phoneticfamily:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1287
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1288
    .local v3, data:Landroid/content/Intent;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    .local v10, names:Landroid/content/ContentValues;
    const-string v17, "data4"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v17, "data6"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v17, "data5"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v17, "data3"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v17, "data9"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v17, "data9"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v17, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->handleRequestNameEditing(Landroid/content/Intent;)V
    invoke-static {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1600(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    .line 1349
    .end local v3           #data:Landroid/content/Intent;
    .end local v4           #family:Ljava/lang/String;
    .end local v5           #given:Ljava/lang/String;
    .end local v8           #middle:Ljava/lang/String;
    .end local v10           #names:Landroid/content/ContentValues;
    .end local v11           #phoneticfamily:Ljava/lang/String;
    .end local v12           #phoneticgiven:Ljava/lang/String;
    .end local v13           #phoneticmiddle:Ljava/lang/String;
    .end local v14           #prefix:Ljava/lang/String;
    .end local v16           #suffix:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 1350
    return-void

    .line 1303
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/link/MergeContact;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    .line 1304
    .local v15, sCurrentDisplayName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1305
    const/4 v2, 0x0

    .line 1306
    .local v2, bFindMatch:Z
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    .restart local v10       #names:Landroid/content/ContentValues;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v18, "name"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1310
    const/4 v2, 0x1

    .line 1311
    const-string v18, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "prefix_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v18, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "suffix_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v18, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "given_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v18, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "middle_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v18, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "family_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v18, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "phonetic_given_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v18, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "phonetic_middle_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v18, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashMap;

    const-string v19, "phonetic_family_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_3
    if-eqz v2, :cond_5

    .line 1324
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1325
    .local v7, intent:Landroid/content/Intent;
    const-string v17, "data4"

    const-string v18, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    const-string v17, "data6"

    const-string v18, "data6"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v17, "data2"

    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v17, "data5"

    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    const-string v17, "data3"

    const-string v18, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const-string v17, "data7"

    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v17, "data8"

    const-string v18, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    const-string v17, "data9"

    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1800(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v17

    const-class v18, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1334
    const-string v17, "account_type"

    const-string v18, "com.htc.android.pcsc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1308
    .end local v7           #intent:Landroid/content/Intent;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1337
    :cond_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1338
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2000(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v17

    const-class v18, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1339
    const-string v17, "account_type"

    const-string v18, "com.htc.android.pcsc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1343
    .end local v2           #bFindMatch:Z
    .end local v6           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #names:Landroid/content/ContentValues;
    :cond_6
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1344
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2100(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v17

    const-class v18, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1345
    const-string v17, "account_type"

    const-string v18, "com.htc.android.pcsc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$10;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
