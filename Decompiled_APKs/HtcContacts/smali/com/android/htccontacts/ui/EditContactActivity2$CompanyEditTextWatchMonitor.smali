.class Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;
.super Lcom/android/htccontacts/ui/widget/EditorMonitor;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompanyEditTextWatchMonitor"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/EditContactActivity2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 6799
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/EditorMonitor;-><init>()V

    .line 6800
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    .line 6801
    return-void
.end method


# virtual methods
.method public onEditorDeleted(Ljava/lang/String;J)V
    .locals 3
    .parameter "mimetype"
    .parameter "dataId"

    .prologue
    .line 6805
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6807
    .local v0, activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6808
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->checkCompanyData()Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v1

    .line 6809
    .local v1, isEmpty:Z
    if-eqz v1, :cond_0

    .line 6810
    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z
    invoke-static {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9602(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 6813
    .end local v1           #isEmpty:Z
    :cond_0
    return-void
.end method

.method public onTextWatchChanged(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/text/Editable;)V
    .locals 4
    .parameter "mimetype"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6818
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6819
    .local v0, activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6820
    if-nez p2, :cond_2

    const/4 v1, 0x0

    .line 6821
    .local v1, beforeLen:I
    :goto_0
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 6822
    .local v2, currentLen:I
    if-eq v1, v2, :cond_1

    .line 6823
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9600(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6824
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->resetDisplayName()V

    .line 6826
    :cond_0
    const/4 v3, 0x1

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z
    invoke-static {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9602(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 6829
    .end local v1           #beforeLen:I
    .end local v2           #currentLen:I
    :cond_1
    return-void

    .line 6820
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0
.end method
