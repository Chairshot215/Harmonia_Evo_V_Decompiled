.class Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OperatorRearrangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field private mMyInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;>;"
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 225
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    .line 226
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 230
    move v2, p1

    .line 232
    .local v2, index:I
    const v4, 0x20900d2

    .line 234
    .local v4, resId:I
    if-nez p2, :cond_2

    .line 235
    iget-object v11, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->mMyInflater:Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v4, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 240
    .local v10, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    .line 241
    .local v3, itemData:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->getStringData()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, summary:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->getState()Z

    move-result v9

    .line 244
    .local v9, value:Z
    const v11, 0x2020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 246
    .local v7, title:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 247
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 248
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205004d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    :cond_0
    const v11, 0x2020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 252
    .local v8, tv_1:Landroid/view/View;
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const v11, 0x2020106

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 255
    .local v1, box:Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    .line 256
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 257
    const v11, 0x2080014

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 258
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    :cond_1
    move v5, p1

    .line 263
    .local v5, selectedPosition:I
    new-instance v11, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;

    invoke-direct {v11, p0, v5}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;-><init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;I)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-object v10

    .line 237
    .end local v1           #box:Landroid/widget/CheckBox;
    .end local v3           #itemData:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
    .end local v5           #selectedPosition:I
    .end local v6           #summary:Ljava/lang/String;
    .end local v7           #title:Landroid/widget/TextView;
    .end local v8           #tv_1:Landroid/view/View;
    .end local v9           #value:Z
    .end local v10           #view:Landroid/view/View;
    :cond_2
    move-object/from16 v10, p2

    .restart local v10       #view:Landroid/view/View;
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
            "Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;>;"
    return-void
.end method
