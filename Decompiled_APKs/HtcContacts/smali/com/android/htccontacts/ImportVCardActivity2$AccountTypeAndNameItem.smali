.class Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;
.super Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountTypeAndNameItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 749
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 750
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 751
    new-instance v0, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$AccountTypeAndNameItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 752
    return-void
.end method
