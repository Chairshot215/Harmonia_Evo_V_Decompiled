.class Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnDismissListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/ShowOrCreateActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/ShowOrCreateActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$MyOnDismissListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ShowOrCreateActivity;

    .line 248
    .local v0, target:Lcom/android/htccontacts/ui/ShowOrCreateActivity;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ShowOrCreateActivity;->finish()V

    .line 253
    :cond_0
    return-void
.end method
