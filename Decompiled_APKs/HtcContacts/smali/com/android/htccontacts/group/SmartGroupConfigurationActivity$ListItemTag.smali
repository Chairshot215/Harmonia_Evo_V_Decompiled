.class Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "SmartGroupConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemTag"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public itemType:I

.field public listener:Landroid/view/View$OnClickListener;

.field public primaryTextView:Landroid/widget/TextView;

.field public secondaryLayout:Landroid/view/View;

.field public secondaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 620
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 622
    return-void
.end method


# virtual methods
.method public set2ndaryVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 632
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->secondaryLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->secondaryLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :cond_0
    :goto_1
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->secondaryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity$ListItemTag;->secondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
