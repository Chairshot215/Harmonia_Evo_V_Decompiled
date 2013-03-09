.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectDataThreadPool"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactPhoneEmailDataPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 3526
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->activityRef:Ljava/lang/ref/WeakReference;

    .line 3528
    return-void
.end method

.method static synthetic access$4200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->activityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;
    .locals 2
    .parameter "after"
    .parameter "isFinish"

    .prologue
    .line 3532
    new-instance v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;ZLjava/lang/Runnable;)V

    .line 3547
    .local v0, basicRunnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3548
    .local v1, thread:Ljava/lang/Thread;
    return-object v1
.end method
