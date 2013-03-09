.class Lcom/s0up/goomanager/LoginActivity$GetHash;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHash"
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
.field final synthetic this$0:Lcom/s0up/goomanager/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/LoginActivity;Lcom/s0up/goomanager/LoginActivity$GetHash;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/LoginActivity$GetHash;-><init>(Lcom/s0up/goomanager/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/LoginActivity$GetHash;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 77
    new-instance v0, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v0}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 78
    .local v0, web:Lcom/s0up/goomanager/WebRequest;
    iget-object v1, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    iget-object v2, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    iget-object v2, v2, Lcom/s0up/goomanager/LoginActivity;->txtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/s0up/goomanager/LoginActivity;->username:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/s0up/goomanager/LoginActivity;->access$1(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    iget-object v2, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    iget-object v2, v2, Lcom/s0up/goomanager/LoginActivity;->txtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/s0up/goomanager/LoginActivity;->password:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/s0up/goomanager/LoginActivity;->access$2(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->loginURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$3(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$4(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$5(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/s0up/goomanager/LoginActivity;->access$6(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/LoginActivity$GetHash;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 59
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$0(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$0(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 60
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const-string v4, "Thanks for supporting us!  You are now logged in."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 61
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const-string v4, "goomanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/s0up/goomanager/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "mHash"

    iget-object v4, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/LoginActivity;->access$0(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const-class v4, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    invoke-virtual {v3, v1}, Lcom/s0up/goomanager/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    invoke-virtual {v3}, Lcom/s0up/goomanager/LoginActivity;->finish()V

    .line 73
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    #getter for: Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/LoginActivity;->access$0(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const-string v4, "Invalid credentials."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/s0up/goomanager/LoginActivity$GetHash;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const-string v4, "Unable to reach the login server."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
