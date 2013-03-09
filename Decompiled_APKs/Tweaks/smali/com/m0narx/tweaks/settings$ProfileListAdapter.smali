.class Lcom/m0narx/tweaks/settings$ProfileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/settings;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/settings;)V
    .locals 1
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->this$0:Lcom/m0narx/tweaks/settings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    .line 399
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 400
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "tag"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V

    .line 417
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 435
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, holder:Lcom/m0narx/tweaks/settings$ViewHolder;
    if-nez p2, :cond_0

    .line 442
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 443
    new-instance v0, Lcom/m0narx/tweaks/settings$ViewHolder;

    .end local v0           #holder:Lcom/m0narx/tweaks/settings$ViewHolder;
    invoke-direct {v0}, Lcom/m0narx/tweaks/settings$ViewHolder;-><init>()V

    .line 444
    .restart local v0       #holder:Lcom/m0narx/tweaks/settings$ViewHolder;
    const v1, 0x7f09000c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v1, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 445
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    :goto_0
    iget-object v2, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v1, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 452
    return-object p2

    .line 447
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/m0narx/tweaks/settings$ViewHolder;
    check-cast v0, Lcom/m0narx/tweaks/settings$ViewHolder;

    .restart local v0       #holder:Lcom/m0narx/tweaks/settings$ViewHolder;
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V

    .line 406
    return-void
.end method

.method public renameItem(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "NewName"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V

    .line 411
    return-void
.end method
