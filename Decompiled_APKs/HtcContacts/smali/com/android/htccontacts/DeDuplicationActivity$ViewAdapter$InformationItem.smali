.class Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InformationItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public mLeftSpaceView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->this$1:Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;

    .line 176
    invoke-direct {p0, v1, v1}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 177
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    .line 178
    new-instance v1, Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcListItemQuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 179
    new-instance v1, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 180
    new-instance v1, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-direct {v1, p2}, Lcom/htc/widget/HtcListItemCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 181
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v2, p1, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/htccontacts/customize/CustomizeResource;->getCustomizeResourceId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    .local v0, quickContactLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ViewAdapter$InformationItem;->mLeftSpaceView:Landroid/view/View;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 185
    return-void
.end method
