.class Lcom/android/htccontacts/ui/widget/DateEditorView$1;
.super Ljava/lang/Object;
.source "DateEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/DateEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

.field final synthetic val$customType:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/DateEditorView;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->val$customType:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->val$customType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, customText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    #getter for: Lcom/android/htccontacts/ui/widget/DateEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v2}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$000(Lcom/android/htccontacts/ui/widget/DateEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 306
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/ui/widget/DateEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$002(Lcom/android/htccontacts/ui/widget/DateEditorView;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/AccountType$EditType;

    .line 307
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v2, v2, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v3, v3, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v3, v3, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 308
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v2, v2, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$1;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    #calls: Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildLabel()V
    invoke-static {v1}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$100(Lcom/android/htccontacts/ui/widget/DateEditorView;)V

    .line 311
    :cond_0
    return-void
.end method
