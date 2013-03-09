.class public Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;
.super Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanyDirectoryDataSearchAdapter"
.end annotation


# instance fields
.field private mEnbleSaveToArray:Z

.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/app/Activity;I[Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "layout"
    .parameter "listProjection"
    .parameter "isEnable"

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 3632
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;-><init>(Landroid/app/Activity;I[Ljava/lang/String;Z)V

    .line 3629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    .line 3634
    return-void
.end method


# virtual methods
.method public final bindForData(Landroid/view/View;Landroid/database/Cursor;Landroid/util/SparseBooleanArray;)V
    .locals 20
    .parameter "view"
    .parameter "c"
    .parameter "cdsb"

    .prologue
    .line 3762
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3763
    .local v12, name:Ljava/lang/String;
    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3765
    .local v5, accountType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 3766
    .local v13, obj:Ljava/lang/Object;
    instance-of v0, v13, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 3883
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v17, v13

    .line 3769
    check-cast v17, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .line 3771
    .local v17, tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    const/4 v15, 0x0

    .line 3772
    .local v15, primaryText:Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 3774
    .local v16, secondText:Ljava/lang/CharSequence;
    const/4 v2, -0x1

    .line 3775
    .local v2, _id:I
    const/4 v4, -0x1

    .line 3776
    .local v4, _type:I
    const/16 v18, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3778
    .local v3, _label:Ljava/lang/String;
    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3779
    const/4 v2, -0x1

    .line 3784
    :goto_1
    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3785
    const/4 v4, -0x1

    .line 3790
    :goto_2
    if-eqz v12, :cond_b

    .line 3791
    move-object v15, v12

    .line 3797
    :goto_3
    const/16 v18, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3800
    .local v11, mimetype:Ljava/lang/String;
    const/4 v10, 0x2

    .line 3801
    .local v10, mPhoneOrMail:I
    const-string v18, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3802
    const/4 v10, 0x1

    .line 3809
    :goto_4
    const/16 v18, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3812
    .local v8, data:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3813
    move-object/from16 v16, v8

    .line 3816
    :cond_2
    const/4 v7, 0x0

    .line 3818
    .local v7, charseq:Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 3819
    .local v6, buffer:Ljava/lang/StringBuffer;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_e

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$5000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5, v11, v4, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3824
    if-nez v7, :cond_3

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v18, v0

    const v19, 0x7f0a005f

    invoke-virtual/range {v18 .. v19}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3828
    :cond_3
    if-eqz v7, :cond_4

    .line 3829
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3832
    :cond_4
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3856
    :cond_5
    :goto_5
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3857
    if-eqz v8, :cond_6

    .line 3858
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3860
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3865
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 3866
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 3867
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 3870
    :cond_7
    const/4 v9, 0x0

    .line 3871
    .local v9, isChecked:Z
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 3873
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3874
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 3877
    :cond_8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 3878
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v14

    .line 3879
    .local v14, photoView:Landroid/widget/ImageView;
    if-eqz v14, :cond_0

    .line 3880
    const v18, 0x2080846

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/widget/QuickContactBadge;->setImageResourceWithoutRelayout(I)V

    goto/16 :goto_0

    .line 3781
    .end local v6           #buffer:Ljava/lang/StringBuffer;
    .end local v7           #charseq:Ljava/lang/CharSequence;
    .end local v8           #data:Ljava/lang/String;
    .end local v9           #isChecked:Z
    .end local v10           #mPhoneOrMail:I
    .end local v11           #mimetype:Ljava/lang/String;
    .end local v14           #photoView:Landroid/widget/ImageView;
    :cond_9
    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto/16 :goto_1

    .line 3787
    :cond_a
    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto/16 :goto_2

    .line 3794
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v18, v0

    const v19, 0x7f0a016e

    invoke-virtual/range {v18 .. v19}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    goto/16 :goto_3

    .line 3803
    .restart local v10       #mPhoneOrMail:I
    .restart local v11       #mimetype:Ljava/lang/String;
    :cond_c
    if-eqz v11, :cond_d

    .line 3804
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 3806
    :cond_d
    const/4 v10, 0x2

    goto/16 :goto_4

    .line 3834
    .restart local v6       #buffer:Ljava/lang/StringBuffer;
    .restart local v7       #charseq:Ljava/lang/CharSequence;
    .restart local v8       #data:Ljava/lang/String;
    :cond_e
    if-nez v10, :cond_11

    .line 3836
    if-gez v4, :cond_10

    .line 3837
    move-object v7, v3

    .line 3844
    :goto_6
    if-nez v7, :cond_f

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v18, v0

    const v19, 0x7f0a0127

    invoke-virtual/range {v18 .. v19}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3848
    :cond_f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3849
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 3839
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    move-object/from16 v18, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$5100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5, v11, v4, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 3851
    :cond_11
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    goto/16 :goto_5
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3886
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->cdsb:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$2400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->bindForData(Landroid/view/View;Landroid/database/Cursor;Landroid/util/SparseBooleanArray;)V

    .line 3887
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3661
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->saveCpToArray()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 3668
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3669
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->undateHeaderButtonStateDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;J)V

    .line 3670
    return-void
.end method

.method protected createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 3638
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 3640
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method protected generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 3674
    .local p1, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const/4 v2, 0x0

    .line 3675
    .local v2, dataResultlist:Ljava/util/List;
    const/4 v8, 0x0

    .line 3687
    .local v8, selfMatrixCursor:Landroid/database/MatrixCursor;
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v11, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getPhoneMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    invoke-static {v10, v11}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4500(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v2

    .line 3690
    if-nez v2, :cond_0

    .line 3691
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #dataResultlist:Ljava/util/List;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3694
    .restart local v2       #dataResultlist:Ljava/util/List;
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 3695
    :cond_1
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10, v11}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4602(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Ljava/util/List;)Ljava/util/List;

    .line 3701
    :goto_0
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissSearchProgressDialog()V
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    .line 3703
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 3705
    new-instance v8, Landroid/database/MatrixCursor;

    .end local v8           #selfMatrixCursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4800()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3708
    .restart local v8       #selfMatrixCursor:Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    .line 3710
    .local v0, colleageAddressDataId:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_a

    .line 3711
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 3712
    .local v6, map:Ljava/util/HashMap;
    const-string v10, "display_name"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3713
    .local v3, displayName:Ljava/lang/String;
    const-string v10, "email_address"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v7, "vnd.android.cursor.item/email_v2"

    .line 3715
    .local v7, mimeType:Ljava/lang/String;
    :goto_2
    const-string v10, "email_address"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "email_address"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v1, v10

    .line 3718
    .local v1, data1:Ljava/lang/String;
    :goto_3
    const-string v10, "label"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "label"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3721
    .local v5, label:Ljava/lang/String;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 3723
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)I

    move-result v10

    const v11, 0xf000001

    if-ne v10, v11, :cond_7

    .line 3724
    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 3710
    :cond_2
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3697
    .end local v0           #colleageAddressDataId:I
    .end local v1           #data1:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 3698
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4600(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 3713
    .restart local v0       #colleageAddressDataId:I
    .restart local v3       #displayName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #map:Ljava/util/HashMap;
    :cond_4
    const-string v7, "vnd.android.cursor.item/phone_v2"

    goto :goto_2

    .line 3715
    .restart local v7       #mimeType:Ljava/lang/String;
    :cond_5
    const-string v10, "phone_number"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v1, v10

    goto :goto_3

    .line 3718
    .restart local v1       #data1:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 3727
    .restart local v5       #label:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)I

    move-result v10

    const v11, 0xf000002

    if-ne v10, v11, :cond_9

    .line 3728
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3735
    :cond_8
    :goto_6
    const/16 v10, 0x10

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "eas_accounttype"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object v7, v9, v10

    const/4 v10, 0x6

    aput-object v1, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0x8

    aput-object v5, v9, v10

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "1"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "0"

    aput-object v11, v9, v10

    .line 3754
    .local v9, tempRow:[Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 3731
    .end local v9           #tempRow:[Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mlist_data_kind:I
    invoke-static {v10}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)I

    move-result v10

    const v11, 0xf000003

    if-ne v10, v11, :cond_8

    goto :goto_6

    .line 3757
    .end local v0           #colleageAddressDataId:I
    .end local v1           #data1:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_a
    return-object v8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3891
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3892
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 3649
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3650
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    .line 3651
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 3652
    .local v0, newCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3653
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    .line 3654
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->notifyDataSetChanged()V

    .line 3656
    .end local v0           #newCursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public refreshCursor(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3644
    .local p1, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 3645
    .local v0, newCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3646
    return-void
.end method
