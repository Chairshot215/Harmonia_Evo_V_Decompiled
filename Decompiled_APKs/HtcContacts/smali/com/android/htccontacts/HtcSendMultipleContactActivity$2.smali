.class Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;
.super Ljava/lang/Object;
.source "HtcSendMultipleContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendMultipleContactActivity;->displaySendContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    iput-object p2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 199
    const-string v1, "HtcSendMultipleContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendMultipleContactActivity;->handleSendMultipleContacts(I)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->access$000(Lcom/android/htccontacts/HtcSendMultipleContactActivity;I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a03a8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
