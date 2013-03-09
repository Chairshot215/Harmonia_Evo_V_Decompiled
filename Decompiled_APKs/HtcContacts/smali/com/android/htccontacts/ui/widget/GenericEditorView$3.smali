.class Lcom/android/htccontacts/ui/widget/GenericEditorView$3;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

.field final synthetic val$validTypes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->val$validTypes:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->val$validTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    #setter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$202(Lcom/android/htccontacts/ui/widget/GenericEditorView;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/AccountType$EditType;

    .line 420
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$200(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$200(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v0

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 426
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$402(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/htccontacts/ui/widget/GenericEditorView;->createCustomDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$500(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$402(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 429
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mCustomerDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$400(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/GenericEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v1}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$200(Lcom/android/htccontacts/ui/widget/GenericEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 435
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v2, v2, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 436
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    #calls: Lcom/android/htccontacts/ui/widget/GenericEditorView;->rebuildLabel()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$300(Lcom/android/htccontacts/ui/widget/GenericEditorView;)V

    goto :goto_0
.end method
