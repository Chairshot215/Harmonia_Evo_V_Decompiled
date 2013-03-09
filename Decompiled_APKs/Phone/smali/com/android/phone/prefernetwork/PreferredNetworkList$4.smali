.class Lcom/android/phone/prefernetwork/PreferredNetworkList$4;
.super Ljava/lang/Object;
.source "PreferredNetworkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$200(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, data:Ljava/lang/String;
    const-string v1, ""

    .line 380
    .local v1, name:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-static {v2, v0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 386
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$200(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #setter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$302(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #setter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$402(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    #getter for: Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->access$200(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    invoke-virtual {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showTypeDialog()V

    goto :goto_0
.end method
