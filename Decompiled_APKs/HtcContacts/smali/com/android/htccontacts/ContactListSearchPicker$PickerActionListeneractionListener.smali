.class final Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PickerActionListeneractionListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 909
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 910
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 911
    iput-object p2, p0, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;->resultIntent:Landroid/content/Intent;

    .line 912
    return-void
.end method


# virtual methods
.method public action1Done()V
    .locals 3

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 916
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$PickerActionListeneractionListener;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 918
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 920
    :cond_0
    return-void
.end method

.method public action2Done()V
    .locals 0

    .prologue
    .line 923
    return-void
.end method
