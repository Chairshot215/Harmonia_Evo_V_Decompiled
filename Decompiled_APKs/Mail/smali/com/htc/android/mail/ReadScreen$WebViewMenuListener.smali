.class Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7143
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 7147
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/HtcWebView;->isEnableQuickSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7156
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v1}, Lcom/htc/android/mail/ReadScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 7157
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 7158
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mComboSubject:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$11800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 7159
    return-void
.end method
