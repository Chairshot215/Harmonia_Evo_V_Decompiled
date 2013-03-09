.class Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;
.super Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendViaItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 178
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 180
    new-instance v0, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$SendViaItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 181
    return-void
.end method
