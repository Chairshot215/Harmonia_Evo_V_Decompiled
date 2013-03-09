.class Lcom/android/htccontacts/ui/widget/DateEditorView$3;
.super Ljava/lang/Object;
.source "DateEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/DateEditorView;->createLabelDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

.field final synthetic val$validTypes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/DateEditorView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->val$validTypes:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 353
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->val$validTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    #setter for: Lcom/android/htccontacts/ui/widget/DateEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$002(Lcom/android/htccontacts/ui/widget/DateEditorView;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/AccountType$EditType;

    .line 359
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    #calls: Lcom/android/htccontacts/ui/widget/DateEditorView;->createCustomDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$200(Lcom/android/htccontacts/ui/widget/DateEditorView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->val$validTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 363
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v2, v2, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 364
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$3;->this$0:Lcom/android/htccontacts/ui/widget/DateEditorView;

    #calls: Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildLabel()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->access$100(Lcom/android/htccontacts/ui/widget/DateEditorView;)V

    goto :goto_0
.end method
