.class Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;
.super Lcom/android/htccontacts/ui/widget/DelayStringCallback;
.source "DropdownEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/DropdownEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownDelayStringCallback"
.end annotation


# instance fields
.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/DropdownEditorView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/DropdownEditorView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DelayStringCallback;-><init>()V

    .line 242
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;->viewRef:Ljava/lang/ref/WeakReference;

    .line 243
    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 5
    .parameter "string"

    .prologue
    .line 249
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 250
    .local v3, view:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {v3}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    move-object v1, p1

    .line 257
    .local v1, newText:Ljava/lang/String;
    new-instance v2, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback$1;-><init>(Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;Lcom/android/htccontacts/ui/widget/DropdownEditorView;Ljava/lang/String;)V

    .line 265
    .local v2, r:Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 266
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
