.class Landroid/webkit/WebView$InvokeListBox$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/16 v1, 0x7c

    long-to-int v2, p4

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #setter for: Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$12102(Landroid/webkit/WebView;Landroid/os/Message;)Landroid/os/Message;

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v0}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$12002(Landroid/webkit/WebView;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    return-void
.end method
