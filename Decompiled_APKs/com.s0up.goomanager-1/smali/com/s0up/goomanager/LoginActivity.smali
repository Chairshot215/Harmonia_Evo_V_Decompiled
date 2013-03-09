.class public Lcom/s0up/goomanager/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/LoginActivity$ButtonListener;,
        Lcom/s0up/goomanager/LoginActivity$GetHash;
    }
.end annotation


# instance fields
.field private hash:Ljava/lang/String;

.field private loginURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field txtPassword:Landroid/widget/EditText;

.field txtUsername:Landroid/widget/EditText;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "http://goo-inside.me/salt"

    iput-object v0, p0, Lcom/s0up/goomanager/LoginActivity;->loginURL:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/s0up/goomanager/LoginActivity;->username:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/s0up/goomanager/LoginActivity;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/s0up/goomanager/LoginActivity;->loginURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/s0up/goomanager/LoginActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/s0up/goomanager/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/s0up/goomanager/LoginActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/s0up/goomanager/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/s0up/goomanager/LoginActivity;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/s0up/goomanager/LoginActivity;->finish()V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/s0up/goomanager/LoginActivity;->setContentView(I)V

    .line 29
    const-string v6, "goomanager"

    invoke-virtual {p0, v6, v8}, Lcom/s0up/goomanager/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 31
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/s0up/goomanager/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 33
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    .end local v2           #extras:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_0
    const-string v6, "action"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "action"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "logout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 38
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mHash"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    invoke-virtual {p0}, Lcom/s0up/goomanager/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "You have been logged out!"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 41
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/s0up/goomanager/LoginActivity;->finish()V

    .line 46
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #i:Landroid/content/Intent;
    :cond_1
    const v6, 0x7f09002a

    invoke-virtual {p0, v6}, Lcom/s0up/goomanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, btnLogin:Landroid/widget/Button;
    new-instance v6, Lcom/s0up/goomanager/LoginActivity$ButtonListener;

    invoke-direct {v6, p0, v9}, Lcom/s0up/goomanager/LoginActivity$ButtonListener;-><init>(Lcom/s0up/goomanager/LoginActivity;I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v6, 0x7f090027

    invoke-virtual {p0, v6}, Lcom/s0up/goomanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/s0up/goomanager/LoginActivity;->txtUsername:Landroid/widget/EditText;

    .line 49
    const v6, 0x7f090029

    invoke-virtual {p0, v6}, Lcom/s0up/goomanager/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/s0up/goomanager/LoginActivity;->txtPassword:Landroid/widget/EditText;

    .line 50
    const-string v6, "mHash"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, prefHash:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 52
    const-string v6, "You are already logged in!"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 53
    invoke-virtual {p0}, Lcom/s0up/goomanager/LoginActivity;->finish()V

    .line 55
    :cond_2
    return-void
.end method
