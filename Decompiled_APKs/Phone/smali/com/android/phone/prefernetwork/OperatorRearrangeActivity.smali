.class public Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;
.super Landroid/app/Activity;
.source "OperatorRearrangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;,
        Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    }
.end annotation


# instance fields
.field private mActionView:Lcom/htc/widget/HtcReorderListView;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteNumber:I

.field private mDeleteString:Ljava/lang/String;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mListadapter:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

.field private mOpNameList:Ljava/lang/String;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 292
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$1;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 297
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$2;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 321
    new-instance v0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$3;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$3;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->handleDeleteCount(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mListadapter:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    return-object v0
.end method

.method private handleDeleteCount(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 178
    if-eqz p1, :cond_1

    .line 179
    iget v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    .line 182
    iget v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x1040013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    check-cast p1, Landroid/widget/Button;

    .end local p1
    if-ne v2, p1, :cond_1

    .line 159
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mResult:Ljava/lang/String;

    .line 160
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mOpNameList:Ljava/lang/String;

    .line 162
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    invoke-virtual {v2}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->getState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mOpNameList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    invoke-virtual {v2}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mOpNameList:Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    invoke-virtual {v2}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mResult:Ljava/lang/String;

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1           #i:I
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, data:Landroid/content/Intent;
    const-string v2, "code_list"

    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "name_list"

    iget-object v3, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mOpNameList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->finish()V

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->requestWindowFeature(I)Z

    .line 52
    const v10, 0x7f030052

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->setContentView(I)V

    .line 54
    const v10, 0x7f080133

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    .line 55
    .local v4, headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v4, :cond_0

    .line 56
    const v10, 0x7f0e01e2

    invoke-virtual {v4, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 57
    invoke-virtual {v4, v12}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 61
    :cond_0
    const v10, 0x7f080079

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    .line 63
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    if-eqz v10, :cond_1

    .line 64
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    const v11, 0x1040013

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 65
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_1
    const v10, 0x7f080078

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 69
    .local v3, denyButton:Landroid/widget/Button;
    if-eqz v3, :cond_2

    .line 70
    const/high16 v10, 0x104

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(I)V

    .line 71
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 76
    .local v9, privateData:Landroid/content/Intent;
    const-string v7, ""

    .local v7, list:Ljava/lang/String;
    const-string v8, ""

    .line 77
    .local v8, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, container:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, codeList:[Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 80
    const-string v10, "code_list"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    const-string v10, "name_list"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    iput-object v7, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mResult:Ljava/lang/String;

    .line 83
    iput-object v8, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mOpNameList:Ljava/lang/String;

    .line 84
    const-string v10, ";"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    .line 91
    array-length v6, v1

    .line 92
    .local v6, length:I
    array-length v10, v0

    if-gt v10, v6, :cond_4

    .line 93
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 94
    new-instance v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    aget-object v10, v1, v5

    aget-object v11, v0, v5

    invoke-direct {v2, p0, v12, v10, v11}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v2, dataItem:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    const/4 v2, 0x0

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v2           #dataItem:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    .end local v5           #j:I
    :cond_4
    new-instance v10, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-direct {v10, p0, p0, v11}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mListadapter:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    .line 101
    const v10, 0x7f080135

    invoke-virtual {p0, v10}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcReorderListView;

    iput-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    .line 102
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    if-eqz v10, :cond_5

    .line 103
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mListadapter:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 105
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 106
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 107
    iget-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mActionView:Lcom/htc/widget/HtcReorderListView;

    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 112
    :cond_5
    iput v12, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteNumber:I

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mDeleteString:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    return-void
.end method
