.class Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;
.super Landroid/os/AsyncTask;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRecoveryMsg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 127
    new-instance v1, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v1}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    const-string v2, "http://goo.im/app_recovery_msg"

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    const-string v0, "FAIL"

    .line 131
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 110
    const-string v2, "FAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #getter for: Lcom/s0up/goomanager/FlashActivity;->active:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashActivity;->access$1(Lcom/s0up/goomanager/FlashActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const-string v2, "Important message about this feature"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, wv:Landroid/webkit/WebView;
    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v1, p1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 117
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 120
    const-string v2, "Try to find one for me"

    iget-object v3, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #getter for: Lcom/s0up/goomanager/FlashActivity;->dialogNegativeListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/s0up/goomanager/FlashActivity;->access$2(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const-string v2, "I already have one installed"

    iget-object v3, p0, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #getter for: Lcom/s0up/goomanager/FlashActivity;->dialogPositiveListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/s0up/goomanager/FlashActivity;->access$3(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #wv:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method
