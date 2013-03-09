.class public Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;
.super Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanyDirectoryDataSearchAdapter"
.end annotation


# instance fields
.field private mEnbleSaveToArray:Z

.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/app/Activity;I[Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "layout"
    .parameter "listProjection"
    .parameter "isEnable"

    .prologue
    .line 2914
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    .line 2915
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;-><init>(Landroid/app/Activity;I[Ljava/lang/String;Z)V

    .line 2912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    .line 2917
    return-void
.end method


# virtual methods
.method public final bindForData(Landroid/view/View;Landroid/database/Cursor;Landroid/util/LongSparseArray;)V
    .locals 22
    .parameter "view"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/database/Cursor;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3024
    .local p3, cdsb:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3025
    .local v13, name:Ljava/lang/String;
    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3027
    .local v6, accountType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 3028
    .local v14, obj:Ljava/lang/Object;
    instance-of v0, v14, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 3146
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v18, v14

    .line 3031
    check-cast v18, Lcom/android/htccontacts/widget/BaseContactListItemCache;

    .line 3033
    .local v18, tag:Lcom/android/htccontacts/widget/BaseContactListItemCache;
    const/16 v16, 0x0

    .line 3034
    .local v16, primaryText:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 3036
    .local v17, secondText:Ljava/lang/CharSequence;
    const/4 v3, -0x1

    .line 3037
    .local v3, _id:I
    const/4 v5, -0x1

    .line 3038
    .local v5, _type:I
    const/16 v20, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3040
    .local v4, _label:Ljava/lang/String;
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3041
    const/4 v3, -0x1

    .line 3046
    :goto_1
    const/16 v20, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 3047
    const/4 v5, -0x1

    .line 3052
    :goto_2
    if-eqz v13, :cond_b

    .line 3053
    move-object/from16 v16, v13

    .line 3059
    :goto_3
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3062
    .local v12, mimetype:Ljava/lang/String;
    const/4 v11, 0x2

    .line 3063
    .local v11, mPhoneOrMail:I
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3064
    const/4 v11, 0x1

    .line 3071
    :goto_4
    const/16 v20, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3074
    .local v9, data:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 3075
    move-object/from16 v17, v9

    .line 3078
    :cond_2
    const/4 v8, 0x0

    .line 3080
    .local v8, charseq:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 3081
    .local v7, buffer:Ljava/lang/StringBuffer;
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_e

    .line 3083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4500(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v6, v12, v5, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3086
    if-nez v8, :cond_3

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v20, v0

    const v21, 0x7f0a005f

    invoke-virtual/range {v20 .. v21}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3090
    :cond_3
    if-eqz v8, :cond_4

    .line 3091
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3094
    :cond_4
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3118
    :cond_5
    :goto_5
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3119
    if-eqz v9, :cond_6

    .line 3120
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3122
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3127
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 3128
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 3129
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 3132
    :cond_7
    const/4 v10, 0x0

    .line 3133
    .local v10, isChecked:Z
    int-to-long v0, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 3134
    .local v19, value:Ljava/lang/Boolean;
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 3136
    :goto_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 3137
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 3140
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3141
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v15

    .line 3142
    .local v15, photoView:Landroid/widget/ImageView;
    if-eqz v15, :cond_0

    .line 3143
    const v20, 0x2080846

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/htc/widget/QuickContactBadge;->setImageResourceWithoutRelayout(I)V

    goto/16 :goto_0

    .line 3043
    .end local v7           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #charseq:Ljava/lang/CharSequence;
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #isChecked:Z
    .end local v11           #mPhoneOrMail:I
    .end local v12           #mimetype:Ljava/lang/String;
    .end local v15           #photoView:Landroid/widget/ImageView;
    .end local v19           #value:Ljava/lang/Boolean;
    :cond_9
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto/16 :goto_1

    .line 3049
    :cond_a
    const/16 v20, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto/16 :goto_2

    .line 3056
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v20, v0

    const v21, 0x7f0a016e

    invoke-virtual/range {v20 .. v21}, Lcom/android/htccontacts/CommonContactAttributePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    goto/16 :goto_3

    .line 3065
    .restart local v11       #mPhoneOrMail:I
    .restart local v12       #mimetype:Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_d

    .line 3066
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3068
    :cond_d
    const/4 v11, 0x2

    goto/16 :goto_4

    .line 3096
    .restart local v7       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #charseq:Ljava/lang/CharSequence;
    .restart local v9       #data:Ljava/lang/String;
    :cond_e
    if-nez v11, :cond_11

    .line 3098
    if-gez v5, :cond_10

    .line 3099
    move-object v8, v4

    .line 3106
    :goto_7
    if-nez v8, :cond_f

    .line 3107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v20, v0

    const v21, 0x7f0a0127

    invoke-virtual/range {v20 .. v21}, Lcom/android/htccontacts/CommonContactAttributePicker;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3110
    :cond_f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 3111
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 3101
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v20, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4600(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v6, v12, v5, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 3113
    :cond_11
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_5

    goto/16 :goto_5

    .line 3134
    .restart local v10       #isChecked:Z
    .restart local v19       #value:Ljava/lang/Boolean;
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_6
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mColleageCacheArray:Landroid/util/LongSparseArray;
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$2000(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->bindForData(Landroid/view/View;Landroid/database/Cursor;Landroid/util/LongSparseArray;)V

    .line 3150
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2944
    iget-boolean v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->mEnbleSaveToArray:Z

    if-eqz v0, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->saveCpToArray()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3700(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 2948
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2949
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->undateHeaderButtonStateDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1200(Lcom/android/htccontacts/CommonContactAttributePicker;J)V

    .line 2950
    return-void
.end method

.method protected createHtclistItem(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2921
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 2923
    .local v0, listItem:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method protected generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 18
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
    .line 2953
    .local p1, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    const/4 v10, 0x1

    .line 2954
    .local v10, queryResult:Z
    const/4 v4, 0x0

    .line 2955
    .local v4, dataResultlist:Ljava/util/List;
    const/4 v11, 0x0

    .line 2958
    .local v11, selfMatrixCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 2959
    .local v1, containMailRequest:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mTargetMimeTypeList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3800(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2961
    .local v2, containPhoneRequest:Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 2962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->getPhoneMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    invoke-static {v13, v14}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3900(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v4

    .line 2972
    :goto_0
    if-nez v4, :cond_0

    .line 2973
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #dataResultlist:Ljava/util/List;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2976
    .restart local v4       #dataResultlist:Ljava/util/List;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5

    :cond_1
    if-eqz v10, :cond_5

    .line 2977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13, v14}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4202(Lcom/android/htccontacts/CommonContactAttributePicker;Ljava/util/List;)Ljava/util/List;

    .line 2982
    :goto_1
    if-eqz v10, :cond_2

    .line 2983
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->dismissSearchProgressDialog()V
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4300(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    .line 2985
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 2987
    new-instance v11, Landroid/database/MatrixCursor;

    .end local v11           #selfMatrixCursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4400()[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2990
    .restart local v11       #selfMatrixCursor:Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_9

    .line 2991
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 2992
    .local v8, map:Ljava/util/HashMap;
    const-string v13, "display_name"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2993
    .local v5, displayName:Ljava/lang/String;
    const-string v13, "email_address"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v9, "vnd.android.cursor.item/email_v2"

    .line 2995
    .local v9, mimeType:Ljava/lang/String;
    :goto_3
    const-string v13, "email_address"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "email_address"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v3, v13

    .line 2998
    .local v3, data1:Ljava/lang/String;
    :goto_4
    const-string v13, "label"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "label"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v7, v13

    .line 3000
    .local v7, label:Ljava/lang/String;
    :goto_5
    const/16 v13, 0xf

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, "eas_accounttype"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    aput-object v9, v12, v13

    const/4 v13, 0x6

    aput-object v3, v12, v13

    const/4 v13, 0x7

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/16 v13, 0x8

    aput-object v7, v12, v13

    const/16 v13, 0x9

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/16 v13, 0xb

    const-string v14, "1"

    aput-object v14, v12, v13

    const/16 v13, 0xc

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const/4 v14, 0x0

    aput-object v14, v12, v13

    .line 3016
    .local v12, tempRow:[Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2990
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2964
    .end local v3           #data1:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #map:Ljava/util/HashMap;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v12           #tempRow:[Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 2965
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->getMailResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    invoke-static {v13, v14}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4000(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 2968
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->getPhoneResultList(Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;
    invoke-static {v13, v14}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4100(Lcom/android/htccontacts/CommonContactAttributePicker;Lcom/htc/android/pim/eas/EASGalSearchResult;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 2979
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 2980
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mCompanyDirectoryDataMapList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$4200(Lcom/android/htccontacts/CommonContactAttributePicker;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 2993
    .restart local v5       #displayName:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v8       #map:Ljava/util/HashMap;
    :cond_6
    const-string v9, "vnd.android.cursor.item/phone_v2"

    goto/16 :goto_3

    .line 2995
    .restart local v9       #mimeType:Ljava/lang/String;
    :cond_7
    const-string v13, "phone_number"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v3, v13

    goto/16 :goto_4

    .line 2998
    .restart local v3       #data1:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3019
    .end local v3           #data1:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #i:I
    .end local v8           #map:Ljava/util/HashMap;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_9
    return-object v11
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3154
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3155
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 2932
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchResult:Lcom/htc/android/pim/eas/EASGalSearchResult;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2934
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 2936
    .local v0, newCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2937
    invoke-virtual {p0}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->notifyDataSetChanged()V

    .line 2939
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
    .line 2927
    .local p1, datalist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->generateDataCursor(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 2928
    .local v0, newCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2929
    return-void
.end method
