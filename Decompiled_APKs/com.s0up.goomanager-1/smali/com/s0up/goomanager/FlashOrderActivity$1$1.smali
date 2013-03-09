.class Lcom/s0up/goomanager/FlashOrderActivity$1$1;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity$1;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    iput-object p2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->val$input:Landroid/widget/EditText;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/FlashOrderActivity$1$1;)Lcom/s0up/goomanager/FlashOrderActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 76
    .local v1, value:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "([a-zA-Z0-9-_])+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashOrderActivity$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;

    move-result-object v2

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashOrderActivity;->access$3(Lcom/s0up/goomanager/FlashOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create backup ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    const-string v3, "backupName"

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;
    invoke-static {v3}, Lcom/s0up/goomanager/FlashOrderActivity$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 82
    .local v0, invalidCharsDialog:Landroid/app/AlertDialog;
    const-string v2, "Invalid backup name"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const-string v2, "Your backup must be under 64 characters and not contain anything other than A-Z, 0-9, \'-\', or \'_\'"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    const-string v2, "Continue"

    new-instance v3, Lcom/s0up/goomanager/FlashOrderActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/s0up/goomanager/FlashOrderActivity$1$1$1;-><init>(Lcom/s0up/goomanager/FlashOrderActivity$1$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 94
    .end local v0           #invalidCharsDialog:Landroid/app/AlertDialog;
    :cond_1
    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashOrderActivity$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;

    move-result-object v2

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/s0up/goomanager/FlashOrderActivity;->access$3(Lcom/s0up/goomanager/FlashOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const-string v3, "Create backup"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    const-string v3, "backupName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
