.class Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;
.super Ljava/lang/Object;
.source "DropdownEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;->callBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

.field final synthetic val$newText:Ljava/lang/String;

.field final synthetic val$view:Lcom/android/htccontacts/ui/widget/DropdownEditorView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;Lcom/android/htccontacts/ui/widget/DropdownEditorView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->this$0:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->val$view:Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->val$newText:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->val$view:Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->val$view:Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;->val$newText:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setButtonText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->access$000(Lcom/android/htccontacts/ui/widget/DropdownEditorView;Ljava/lang/String;)V

    goto :goto_0
.end method
