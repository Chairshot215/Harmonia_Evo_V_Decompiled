.class Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;
.super Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoListItem"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$CommonListItem;-><init>(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 168
    new-instance v0, Lcom/htc/widget/HtcListItemTileImage;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemTileImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemTileImage:Lcom/htc/widget/HtcListItemTileImage;

    .line 169
    new-instance v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 170
    new-instance v0, Lcom/htc/widget/HtcListItemImageButton;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$PhotoListItem;->mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 171
    return-void
.end method
