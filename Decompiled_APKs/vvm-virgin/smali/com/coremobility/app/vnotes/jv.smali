.class final Lcom/coremobility/app/vnotes/jv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jv;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jv;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jv;->a:Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteTextForwardForm;)V

    :cond_1
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
