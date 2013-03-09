.class Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;
.super Lcom/android/htccontacts/ui/widget/EditorMonitor;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneEditTextWatchMonitor"
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
    .line 6770
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/EditorMonitor;-><init>()V

    .line 6771
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    .line 6772
    return-void
.end method


# virtual methods
.method public onEditorDeleted(Ljava/lang/String;J)V
    .locals 2
    .parameter "mimetype"
    .parameter "dataId"

    .prologue
    .line 6776
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6777
    .local v0, activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->controlSaveButtonEnabled()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9200(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 6778
    return-void
.end method

.method public onTextWatchChanged(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/text/Editable;)V
    .locals 2
    .parameter "mimetype"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6783
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/EditContactActivity2;

    .line 6784
    .local v0, activity:Lcom/android/htccontacts/ui/EditContactActivity2;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6785
    #calls: Lcom/android/htccontacts/ui/EditContactActivity2;->controlSaveButtonEnabled()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$9200(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 6787
    :cond_0
    return-void
.end method
