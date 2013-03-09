.class Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNameEditableHeaderView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameTextWatcher"
.end annotation


# instance fields
.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 840
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 841
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    .line 842
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$NameTextWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    .line 845
    .local v0, self:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    if-eqz v0, :cond_1

    .line 846
    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$100()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$100()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/htccontacts/util/ContactsUtils;->trimSIMCharEditable(Landroid/text/Editable;I)Landroid/text/Editable;

    .line 848
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->onNameChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v3, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$600(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setNewDisplayName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$700(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Ljava/lang/String;)V

    .line 853
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 857
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 861
    return-void
.end method
