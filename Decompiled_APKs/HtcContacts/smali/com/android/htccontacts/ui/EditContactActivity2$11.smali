.class Lcom/android/htccontacts/ui/EditContactActivity2$11;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->doEditName()V
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
    .line 1405
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
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
    .line 1408
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v18

    if-nez v18, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1409
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1410
    .local v7, nSnSize:I
    move/from16 v0, p3

    if-ge v0, v7, :cond_1

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "display_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v19, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v19 .. v19}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateName(Ljava/lang/String;J)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2400(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 1470
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto/16 :goto_0

    .line 1414
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/link/MergeContact;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 1415
    .local v9, sCurrentDisplayName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1416
    const/4 v4, 0x0

    .line 1417
    .local v4, bFindMatch:Z
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1419
    .local v8, names:Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1420
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v7, :cond_2

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "display_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1422
    const/4 v4, 0x1

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "prefix_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1424
    .local v16, sPrefixName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "suffix_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1425
    .local v17, sSuffixName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "given_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1426
    .local v11, sGivenName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "middle_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1427
    .local v12, sMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "family_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1428
    .local v10, sFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "phonetic_given_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1429
    .local v14, sPhoneticGivenName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "phonetic_middle_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1430
    .local v15, sPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    const-string v19, "phonetic_family_name"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1431
    .local v13, sPhoneticFamilyName:Ljava/lang/String;
    const-string v18, "data4"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v18, "data6"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v18, "data5"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string v18, "data3"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v18, "data8"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v18, "data9"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    .end local v5           #i:I
    .end local v10           #sFamilyName:Ljava/lang/String;
    .end local v11           #sGivenName:Ljava/lang/String;
    .end local v12           #sMiddleName:Ljava/lang/String;
    .end local v13           #sPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #sPhoneticGivenName:Ljava/lang/String;
    .end local v15           #sPhoneticMiddleName:Ljava/lang/String;
    .end local v16           #sPrefixName:Ljava/lang/String;
    .end local v17           #sSuffixName:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_4

    .line 1445
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1446
    .local v6, intent:Landroid/content/Intent;
    const-string v18, "data4"

    const-string v19, "data4"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    const-string v18, "data6"

    const-string v19, "data6"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    const-string v18, "data2"

    const-string v19, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string v18, "data5"

    const-string v19, "data5"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1450
    const-string v18, "data3"

    const-string v19, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v18, "data7"

    const-string v19, "data7"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    const-string v18, "data8"

    const-string v19, "data8"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string v18, "data9"

    const-string v19, "data9"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2500(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1455
    const-string v18, "account_type"

    const-string v19, "com.google"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1420
    .end local v6           #intent:Landroid/content/Intent;
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1458
    .end local v5           #i:I
    :cond_4
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1459
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1460
    const-string v18, "account_type"

    const-string v19, "com.google"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1464
    .end local v4           #bFindMatch:Z
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #names:Landroid/content/ContentValues;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1465
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2700(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1466
    const-string v18, "account_type"

    const-string v19, "com.google"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$11;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V
    invoke-static {v0, v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
