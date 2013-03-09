.class Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UakSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field private mMyInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakSetting;


# direct methods
.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakSetting;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;>;"
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 289
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    .line 290
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 304
    const/4 v15, 0x0

    .line 307
    .local v15, view:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->getSupportPureKeyNumber()I

    move-result v11

    .line 308
    .local v11, pureUAKCount:I
    const/4 v3, 0x0

    .local v3, hadHandled:Z
    const/4 v7, 0x1

    .line 309
    .local v7, is1stGroup:Z
    const v9, 0x1090002

    .line 310
    .local v9, layoutId:I
    if-lez v11, :cond_4

    .line 311
    if-eqz p1, :cond_0

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 312
    :cond_0
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 313
    const/4 v7, 0x0

    .line 314
    :cond_1
    const/4 v3, 0x1

    .line 320
    :cond_2
    :goto_0
    if-eqz v3, :cond_8

    .line 321
    if-nez p2, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 330
    :goto_1
    if-eqz v15, :cond_3

    .line 331
    const v17, 0x1020016

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 332
    .local v14, textTitle:Landroid/widget/TextView;
    if-eqz v14, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    if-eqz v7, :cond_7

    const v17, 0x7f0c0522

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v14           #textTitle:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v16, v15

    .line 380
    .end local v15           #view:Landroid/view/View;
    .local v16, view:Landroid/view/View;
    :goto_3
    return-object v16

    .line 317
    .end local v16           #view:Landroid/view/View;
    .restart local v15       #view:Landroid/view/View;
    :cond_4
    if-nez p1, :cond_2

    .line 318
    const/4 v3, 0x1

    goto :goto_0

    .line 324
    :cond_5
    const v17, 0x7f080086

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 325
    move-object/from16 v15, p2

    goto :goto_1

    .line 327
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    goto :goto_1

    .line 333
    .restart local v14       #textTitle:Landroid/widget/TextView;
    :cond_7
    const v17, 0x7f0c0523

    goto :goto_2

    .line 340
    .end local v14           #textTitle:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferListItemPosintoNoGroupitemPos(I)I

    move-result v6

    .line 341
    .local v6, index:I
    const v12, 0x7f040038

    .line 343
    .local v12, resId:I
    if-nez p2, :cond_c

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 354
    :goto_4
    if-eqz v15, :cond_b

    .line 355
    const v17, 0x7f080020

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 356
    .restart local v14       #textTitle:Landroid/widget/TextView;
    const v17, 0x7f080017

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 357
    .local v13, textSummary:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 358
    .local v5, iconRes:I
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$400()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_e

    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$500()[I

    move-result-object v17

    aget v5, v17, v6

    .line 361
    :goto_5
    const v17, 0x7f080027

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 362
    .local v4, icon:Landroid/widget/ImageView;
    if-eqz v4, :cond_9

    .line 363
    const/16 v17, 0x1

    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$700()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 364
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v17, v0

    invoke-static {v6}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferListItemPosToKeyId_1b(I)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/htcuserassignkey/UakSetting;->getTitlePandingWordingForKey(I)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, pandingLeter:Ljava/lang/String;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0504

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 370
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0504

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    .line 372
    .local v8, itemData:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    if-eqz v8, :cond_b

    .line 373
    if-eqz v13, :cond_b

    invoke-virtual {v8}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->isAssigned()Z

    move-result v17

    if-eqz v17, :cond_10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c050b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->getTarget()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v4           #icon:Landroid/widget/ImageView;
    .end local v5           #iconRes:I
    .end local v8           #itemData:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    .end local v10           #pandingLeter:Ljava/lang/String;
    .end local v13           #textSummary:Landroid/widget/TextView;
    .end local v14           #textTitle:Landroid/widget/TextView;
    :cond_b
    move-object/from16 v16, v15

    .line 380
    .end local v15           #view:Landroid/view/View;
    .restart local v16       #view:Landroid/view/View;
    goto/16 :goto_3

    .line 346
    .end local v16           #view:Landroid/view/View;
    .restart local v15       #view:Landroid/view/View;
    :cond_c
    const v17, 0x7f080086

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 347
    move-object/from16 v15, p2

    goto/16 :goto_4

    .line 349
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_4

    .line 359
    .restart local v5       #iconRes:I
    .restart local v13       #textSummary:Landroid/widget/TextView;
    .restart local v14       #textTitle:Landroid/widget/TextView;
    :cond_e
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$600()[I

    move-result-object v17

    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->access$400()I

    move-result v18

    sub-int v18, v6, v18

    aget v5, v17, v18

    goto/16 :goto_5

    .line 366
    .restart local v4       #icon:Landroid/widget/ImageView;
    :cond_f
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 373
    .restart local v8       #itemData:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    .restart local v10       #pandingLeter:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c050c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 294
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->getSupportPureKeyNumber()I

    move-result v1

    .line 295
    .local v1, pureUAKCount:I
    if-eqz p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    if-eq v2, p1, :cond_0

    const/4 v0, 0x1

    .line 296
    .local v0, isCategory:Z
    :goto_0
    return v0

    .line 295
    .end local v0           #isCategory:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;>;"
    return-void
.end method
