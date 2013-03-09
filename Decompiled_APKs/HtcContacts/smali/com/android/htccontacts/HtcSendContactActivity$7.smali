.class Lcom/android/htccontacts/HtcSendContactActivity$7;
.super Ljava/lang/Object;
.source "HtcSendContactActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendContactActivity;->pickPhoto()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;

.field final synthetic val$adbPhoto:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;Lcom/htc/widget/HtcAlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iput-object p2, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->val$adbPhoto:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2238
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    iget v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 2249
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->val$adbPhoto:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 2252
    :cond_0
    return-void

    .line 2241
    :sswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->setPhotoItemImage(I)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1400(Lcom/android/htccontacts/HtcSendContactActivity;I)V

    .line 2242
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1500(Lcom/android/htccontacts/HtcSendContactActivity;)V

    goto :goto_0

    .line 2245
    :sswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->removePhotoItemImage()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1600(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 2246
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$7;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->checkAllUnSelectedOrNot()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1500(Lcom/android/htccontacts/HtcSendContactActivity;)V

    goto :goto_0

    .line 2239
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
