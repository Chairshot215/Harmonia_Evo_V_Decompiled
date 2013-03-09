.class Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;
.super Ljava/lang/Object;
.source "GenericEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/GenericEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerTextWatcher"
.end annotation


# instance fields
.field before:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

.field final synthetic val$column:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->val$column:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 281
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    if-eqz v1, :cond_2

    const-string v1, "vnd.android.cursor.item/phone_v2"

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v2, v2, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 285
    invoke-static {}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->access$100()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 287
    add-int/lit8 v0, v0, -0x1

    .line 284
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v1, v1, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iget-object v2, v2, Lcom/android/htccontacts/ui/widget/GenericEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v2, v2, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->before:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/htccontacts/ui/widget/EditorMonitor;->onTextWatchChanged(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/text/Editable;)V

    .line 298
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$1InnerTextWatcher;->before:Ljava/lang/CharSequence;

    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 307
    return-void
.end method
