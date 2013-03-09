.class Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheInfoExpandableListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter
    .parameter "groupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter
    .parameter "childLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 6327
    .local p3, groupData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, childData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6328
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 6330
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 6352
    if-nez p4, :cond_1

    .line 6353
    invoke-virtual {p0, p3, p5}, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 6358
    .local v5, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 6360
    .local v0, data:Ljava/lang/Object;
    const v6, 0x7f07004b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, tv:Landroid/widget/TextView;
    move-object v1, v0

    .line 6361
    check-cast v1, Ljava/util/HashMap;

    .line 6362
    .local v1, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    const-string v6, "data"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6363
    .local v2, l:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    if-eqz v2, :cond_0

    .line 6364
    iget-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->type:Lcom/android/htccontacts/model/AccountType$EditType;

    if-eqz v6, :cond_2

    .line 6365
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v7, v2, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->type:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v7, v7, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6372
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090134

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6373
    .local v3, size:I
    invoke-virtual {v4, v3, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6375
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6376
    return-object v5

    .line 6355
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v2           #l:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    .end local v3           #size:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_1
    move-object v5, p4

    .restart local v5       #v:Landroid/view/View;
    goto :goto_0

    .line 6368
    .restart local v0       #data:Ljava/lang/Object;
    .restart local v1       #info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .restart local v2       #l:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    .restart local v4       #tv:Landroid/widget/TextView;
    :cond_2
    iget-object v6, v2, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 6337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6339
    .local v2, v:Landroid/view/View;
    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6340
    .local v1, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6341
    .local v0, size:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x19

    if-ne v3, v4, :cond_0

    .line 6342
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-virtual {v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v0, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6346
    :goto_0
    return-object v2

    .line 6344
    :cond_0
    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
