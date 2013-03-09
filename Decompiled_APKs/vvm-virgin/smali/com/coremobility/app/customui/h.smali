.class final Lcom/coremobility/app/customui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/coremobility/app/customui/CM_RecipientEditor;


# direct methods
.method constructor <init>(Lcom/coremobility/app/customui/CM_RecipientEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/customui/h;->a:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/customui/h;->a:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-static {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->a(Lcom/coremobility/app/customui/CM_RecipientEditor;)Lcom/coremobility/app/customui/i;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coremobility/app/customui/i;->a:Z

    iget-object v0, p0, Lcom/coremobility/app/customui/h;->a:Lcom/coremobility/app/customui/CM_RecipientEditor;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const-string v1, "#*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/coremobility/g/i;->a()Lcom/coremobility/g/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/g/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/h;->a:Lcom/coremobility/app/customui/CM_RecipientEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
