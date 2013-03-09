.class public Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditTextWatcher"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupEditActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1877
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1879
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1882
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupEditActivity;

    .line 1883
    .local v0, activity:Lcom/android/htccontacts/group/GroupEditActivity;
    if-eqz v0, :cond_0

    .line 1884
    #calls: Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupEditActivity;->access$2200(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1886
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1891
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1895
    return-void
.end method
