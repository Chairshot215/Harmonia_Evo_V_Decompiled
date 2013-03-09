.class Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;
.super Landroid/widget/BaseAdapter;
.source "UDBEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/UDBEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EUAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/UDBEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/htc/android/htcime/util/UDBEditor;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/UDBEditor;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    .line 273
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/android/htcime/util/UDBEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 274
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 288
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 293
    if-eqz p2, :cond_2

    move-object v5, p2

    .line 294
    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    .line 301
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/UDBEntry;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .local v3, udb_entry:Lcom/htc/android/htcime/util/UDBEntry;
    move v2, p1

    .line 310
    .local v2, positionId:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f0e0014

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 311
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 312
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/UDBEditor;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "common_delete"

    const/16 v9, 0x9

    invoke-static {v9}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 314
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    iget v5, v5, Lcom/htc/android/htcime/util/UDBEditor;->currMode:I

    if-ne v5, v7, :cond_3

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 316
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    iget-object v5, v5, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    new-instance v5, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter$1;-><init>(Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f0e0012

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 328
    .local v4, word:Landroid/widget/TextView;
    iget-object v5, v3, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/htc/android/htcime/util/HtcSimpleSeparable;

    const-string v7, "notHeader"

    invoke-direct {v6, v7}, Lcom/htc/android/htcime/util/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 332
    :cond_1
    iget-object p2, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    move-object v5, p2

    .line 334
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #positionId:I
    .end local v3           #udb_entry:Lcom/htc/android/htcime/util/UDBEntry;
    .end local v4           #word:Landroid/widget/TextView;
    :goto_3
    return-object v5

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030060

    invoke-virtual {v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->this$0:Lcom/htc/android/htcime/util/UDBEditor;

    #getter for: Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/htcime/util/UDBEditor;->access$000(Lcom/htc/android/htcime/util/UDBEditor;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EUAdapter.getView] get word array list failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 304
    goto :goto_3

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v2       #positionId:I
    .restart local v3       #udb_entry:Lcom/htc/android/htcime/util/UDBEntry;
    :cond_3
    move v5, v6

    .line 314
    goto :goto_1

    :cond_4
    move v6, v7

    .line 316
    goto :goto_2
.end method
