.class Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;
.super Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InformationItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity2$CommonListItem;-><init>(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 759
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 760
    new-instance v0, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 761
    return-void
.end method
