.class final Lcom/coremobility/app/vnotes/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hw;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hw;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hw;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

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
