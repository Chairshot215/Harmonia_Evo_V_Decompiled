.class public abstract Lcom/android/htccontacts/group/FrequencyObserver;
.super Landroid/database/DataSetObserver;
.source "FrequencyObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/DataSetObserver;"
    }
.end annotation


# instance fields
.field mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, this:Lcom/android/htccontacts/group/FrequencyObserver;,"Lcom/android/htccontacts/group/FrequencyObserver<TT;>;"
    .local p1, activity:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/FrequencyObserver;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 14
    .local p0, this:Lcom/android/htccontacts/group/FrequencyObserver;,"Lcom/android/htccontacts/group/FrequencyObserver<TT;>;"
    iget-object v1, p0, Lcom/android/htccontacts/group/FrequencyObserver;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 15
    .local v0, activity:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/FrequencyObserver;->onFrequencyConfigChanged(Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onFrequencyConfigChanged(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/android/htccontacts/group/FrequencyObserver;,"Lcom/android/htccontacts/group/FrequencyObserver<TT;>;"
    .local p1, activity:Ljava/lang/Object;,"TT;"
    return-void
.end method
