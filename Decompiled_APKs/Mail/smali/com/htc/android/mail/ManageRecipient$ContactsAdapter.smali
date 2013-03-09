.class Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAdapter"
.end annotation


# instance fields
.field private chkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ManageRecipient;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 364
    return-void
.end method

.method private existed(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 436
    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->chkList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 437
    .local v0, i:I
    if-ne v0, p1, :cond_0

    .line 438
    const/4 v2, 0x1

    .line 441
    .end local v0           #i:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 393
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 402
    .local v1, receiver:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    if-nez p2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$400(Lcom/htc/android/mail/ManageRecipient;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 406
    new-instance v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;

    invoke-direct {v0, v4}, Lcom/htc/android/mail/ManageRecipient$ViewHolder;-><init>(Lcom/htc/android/mail/ManageRecipient$1;)V

    .line 407
    .local v0, holder:Lcom/htc/android/mail/ManageRecipient$ViewHolder;
    const v2, 0x7f0900b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    .line 408
    const v2, 0x7f090118

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->imageTitle:Lcom/htc/widget/HtcListItemTileImage;

    .line 409
    const v2, 0x7f090119

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 411
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 416
    :goto_0
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 417
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->textLine:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->existed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 425
    :goto_1
    iget-object v2, v1, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->softRef:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->imageTitle:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, v1, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->softRef:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    :goto_2
    return-object p2

    .line 413
    .end local v0           #holder:Lcom/htc/android/mail/ManageRecipient$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;

    .restart local v0       #holder:Lcom/htc/android/mail/ManageRecipient$ViewHolder;
    goto :goto_0

    .line 422
    :cond_1
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object v2, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->imageTitle:Lcom/htc/widget/HtcListItemTileImage;

    const v3, 0x20800c2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_2
.end method

.method public setChkList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, chkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->chkList:Ljava/util/List;

    .line 368
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->list:Ljava/util/List;

    .line 372
    return-void
.end method
