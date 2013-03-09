.class Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOutRunnable"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/QuickContactActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;->activityRef:Ljava/lang/ref/WeakReference;

    .line 254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactActivity$TimeOutRunnable;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/QuickContactActivity;

    .line 257
    .local v0, activity:Lcom/android/htccontacts/ui/QuickContactActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/QuickContactActivity;->setResult(I)V

    .line 259
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactActivity;->finish()V

    .line 261
    :cond_0
    return-void
.end method
