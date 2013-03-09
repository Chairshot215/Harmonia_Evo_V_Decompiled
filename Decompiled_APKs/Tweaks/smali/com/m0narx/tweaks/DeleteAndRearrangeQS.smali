.class public Lcom/m0narx/tweaks/DeleteAndRearrangeQS;
.super Landroid/app/Activity;
.source "DeleteAndRearrangeQS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;,
        Lcom/m0narx/tweaks/DeleteAndRearrangeQS$ViewHolder;
    }
.end annotation


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field Cr:Landroid/content/ContentResolver;

.field private QSList:Lcom/htc/widget/HtcReorderListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field inflater:Landroid/view/LayoutInflater;

.field protected mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)Lcom/htc/widget/HtcReorderListView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar;->hide()V

    .line 42
    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    .line 43
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->inflater:Landroid/view/LayoutInflater;

    .line 44
    const v10, 0x7f030003

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->setContentView(I)V

    .line 45
    const v10, 0x7f090005

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBarText;

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Title:Lcom/htc/widget/HeaderBarText;

    .line 46
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Title:Lcom/htc/widget/HeaderBarText;

    const v11, 0x7f050060

    invoke-virtual {v10, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 47
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Title:Lcom/htc/widget/HeaderBarText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 50
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v10}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 51
    .local v4, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v10, 0x3

    iput v10, v4, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 52
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v10, v4}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const v10, 0x7f090008

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcFooterButton;

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 57
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f05007c

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 58
    new-instance v10, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    .line 60
    const v10, 0x7f090007

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcFooterButton;

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 61
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v11, 0x7f05002e

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 63
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$1;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$2;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, names:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, qs_id:[Ljava/lang/String;
    const-string v0, ""

    .line 100
    .local v0, ActiveIds:Ljava/lang/String;
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_quicksettings"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v2, ""

    .line 102
    .local v2, AllIds:Ljava/lang/String;
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_quicksettings_full"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_0

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 106
    :cond_0
    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 107
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    array-length v10, v9

    if-lt v5, v10, :cond_4

    .line 110
    move-object v0, v2

    .line 111
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_quicksettings_full"

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->Cr:Landroid/content/ContentResolver;

    const-string v11, "tweaks_quicksettings"

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    .end local v5           #i:I
    :cond_1
    if-eqz v0, :cond_2

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v0, v2

    .line 118
    :cond_3
    const/4 v5, 0x1

    .restart local v5       #i:I
    :goto_1
    array-length v10, v9

    if-lt v5, v10, :cond_5

    .line 123
    const-string v10, "REAR"

    const-string v11, "CHECKED!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, ArrAllIds:[Ljava/lang/String;
    const-string v1, ""

    .line 127
    .local v1, Added:Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    array-length v10, v3

    if-lt v5, v10, :cond_7

    .line 150
    const v10, 0x7f090001

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iput-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    .line 151
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const v11, 0x7f090009

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 152
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setVerticalScrollBarEnabled(Z)V

    .line 153
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setItemsCanFocus(Z)V

    .line 154
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setVisibility(I)V

    .line 156
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$3;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$3;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 164
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$4;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$4;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 170
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$5;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 185
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->QSList:Lcom/htc/widget/HtcReorderListView;

    new-instance v11, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;

    invoke-direct {v11, p0}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$6;-><init>(Lcom/m0narx/tweaks/DeleteAndRearrangeQS;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 193
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    invoke-virtual {v10}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->notifyDataSetChanged()V

    .line 194
    return-void

    .line 108
    .end local v1           #Added:Ljava/lang/String;
    .end local v3           #ArrAllIds:[Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 119
    :cond_5
    aget-object v10, v9, v5

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 129
    .restart local v1       #Added:Ljava/lang/String;
    .restart local v3       #ArrAllIds:[Ljava/lang/String;
    :cond_7
    aget-object v10, v3, v5

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    const/4 v7, -0x1

    .line 132
    .local v7, nameindex:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    array-length v10, v9

    if-lt v6, v10, :cond_9

    .line 139
    :goto_4
    const/4 v10, -0x1

    if-eq v7, v10, :cond_8

    .line 140
    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 141
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    aget-object v11, v3, v5

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aget-object v13, v8, v7

    invoke-virtual {v10, v11, v12, v13}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 127
    .end local v6           #j:I
    .end local v7           #nameindex:I
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 133
    .restart local v6       #j:I
    .restart local v7       #nameindex:I
    :cond_9
    aget-object v10, v9, v6

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 134
    move v7, v6

    .line 135
    goto :goto_4

    .line 132
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 143
    :cond_b
    iget-object v10, p0, Lcom/m0narx/tweaks/DeleteAndRearrangeQS;->mRearrangeAdapter:Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;

    aget-object v11, v3, v5

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aget-object v13, v8, v7

    invoke-virtual {v10, v11, v12, v13}, Lcom/m0narx/tweaks/DeleteAndRearrangeQS$RearrangeAdapter;->addItem(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_5
.end method
