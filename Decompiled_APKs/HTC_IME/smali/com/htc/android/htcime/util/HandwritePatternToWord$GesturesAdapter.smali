.class Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;
.super Landroid/widget/BaseAdapter;
.source "HandwritePatternToWord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/HandwritePatternToWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GesturesAdapter"
.end annotation


# instance fields
.field protected _PatternList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;",
            ">;"
        }
    .end annotation
.end field

.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/HandwritePatternToWord;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    .line 298
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    .line 300
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;

    iget-object v0, v0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 347
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 304
    if-nez p2, :cond_0

    .line 305
    iget-object v5, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03001b

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;

    .line 309
    .local v2, item:Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;
    const v5, 0x7f0e0031

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 310
    .local v4, text:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 311
    iget-object v5, v2, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_1
    const v5, 0x7f0e0030

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 315
    .local v1, icon:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 316
    iget-object v5, v2, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternPic:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    :cond_2
    move v3, p1

    .line 322
    .local v3, positionId:I
    const v5, 0x7f0e0014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 323
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v0, :cond_3

    .line 324
    iget-object v5, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "common_delete"

    const/16 v9, 0x9

    invoke-static {v9}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 326
    iget-object v5, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    iget v5, v5, Lcom/htc/android/htcime/util/HandwritePatternToWord;->currMode:I

    if-ne v5, v7, :cond_4

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 327
    iget-object v5, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    iget-object v5, v5, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 329
    new-instance v5, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;-><init>(Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_3
    return-object p2

    :cond_4
    move v5, v6

    .line 326
    goto :goto_0

    :cond_5
    move v6, v7

    .line 327
    goto :goto_1
.end method
