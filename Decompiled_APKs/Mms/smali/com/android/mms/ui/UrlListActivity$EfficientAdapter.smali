.class Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;
.super Landroid/widget/BaseAdapter;
.source "UrlListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UrlListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfficientAdapter"
.end annotation


# instance fields
.field private mIcon1:Landroid/graphics/Bitmap;

.field private mIcon2:Landroid/graphics/Bitmap;

.field private mIcon3:Landroid/graphics/Bitmap;

.field private mIcon4:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/ui/UrlListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/UrlListActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 385
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 388
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon1:Landroid/graphics/Bitmap;

    .line 389
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon2:Landroid/graphics/Bitmap;

    .line 390
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon3:Landroid/graphics/Bitmap;

    .line 391
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon4:Landroid/graphics/Bitmap;

    .line 392
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 422
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x3a

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const/4 v2, 0x0

    .line 435
    .local v2, icon:Lcom/htc/widget/HtcListItemImageButton;
    const/4 v8, 0x0

    .line 437
    .local v8, text:Lcom/htc/widget/HtcListItem2LineText;
    if-nez p2, :cond_0

    .line 438
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/UrlListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/HtcListItemComposer;->createImageButtonListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v1

    .line 439
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    move-object v0, v1

    .line 440
    iget-object p2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 441
    iget-object v9, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Photo:Lcom/htc/widget/HtcListItemImageButton;

    const v10, 0x7f0200d5

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 442
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    .end local v1           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Photo:Lcom/htc/widget/HtcListItemImageButton;

    .line 449
    iget-object v8, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 452
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->p1:Ljava/util/regex/Pattern;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$100(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;

    move-result-object v10

    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 453
    .local v4, m1:Ljava/util/regex/Matcher;
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->p2:Ljava/util/regex/Pattern;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$200(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;

    move-result-object v10

    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 454
    .local v5, m2:Ljava/util/regex/Matcher;
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->p3:Ljava/util/regex/Pattern;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$300(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;

    move-result-object v10

    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 455
    .local v6, m3:Ljava/util/regex/Matcher;
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->p4:Ljava/util/regex/Pattern;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$400(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;

    move-result-object v10

    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 457
    .local v7, m4:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 459
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 463
    .local v3, index:I
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 515
    .end local v3           #index:I
    :goto_1
    return-object p2

    .line 446
    .end local v4           #m1:Ljava/util/regex/Matcher;
    .end local v5           #m2:Ljava/util/regex/Matcher;
    .end local v6           #m3:Ljava/util/regex/Matcher;
    .end local v7           #m4:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .restart local v0       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    goto/16 :goto_0

    .line 465
    .restart local v4       #m1:Ljava/util/regex/Matcher;
    .restart local v5       #m2:Ljava/util/regex/Matcher;
    .restart local v6       #m3:Ljava/util/regex/Matcher;
    .restart local v7       #m4:Ljava/util/regex/Matcher;
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 467
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 472
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    :cond_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 490
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 492
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon3:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 497
    .restart local v3       #index:I
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    .end local v3           #index:I
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 508
    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->mIcon4:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcListItemImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    iget-object v9, p0, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;->this$0:Lcom/android/mms/ui/UrlListActivity;

    #getter for: Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/UrlListActivity;->access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
