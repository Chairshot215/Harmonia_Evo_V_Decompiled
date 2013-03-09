.class Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;
.super Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoListItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 739
    new-instance v0, Lcom/htc/widget/HtcListItemTileImage;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemTileImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 740
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 741
    new-instance v0, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$PhotoListItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 742
    return-void
.end method
