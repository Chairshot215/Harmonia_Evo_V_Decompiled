.class Lcom/android/htccontacts/HtcSendContactActivity$5;
.super Ljava/lang/Object;
.source "HtcSendContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendContactActivity;->pickSendVia()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$5;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$5;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #setter for: Lcom/android/htccontacts/HtcSendContactActivity;->mSelectedSendVia:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1202(Lcom/android/htccontacts/HtcSendContactActivity;I)I

    .line 2180
    iget-object v0, p0, Lcom/android/htccontacts/HtcSendContactActivity$5;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #calls: Lcom/android/htccontacts/HtcSendContactActivity;->setSendViaItem()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcSendContactActivity;->access$1300(Lcom/android/htccontacts/HtcSendContactActivity;)V

    .line 2181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2182
    return-void
.end method
