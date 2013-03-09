.class Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;
.super Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InformationItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 188
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 189
    new-instance v0, Lcom/htc/widget/HtcListItemCheckBox;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$InformationItem;->mHtcListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 190
    return-void
.end method
