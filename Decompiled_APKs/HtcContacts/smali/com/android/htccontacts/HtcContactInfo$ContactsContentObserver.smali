.class Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "HtcContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsContentObserver"
.end annotation


# instance fields
.field outerInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/htccontacts/HtcContactInfo;)V
    .locals 1
    .parameter "h"
    .parameter "info"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;->outerInfo:Ljava/lang/ref/WeakReference;

    .line 106
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;->outerInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo;

    .line 110
    .local v0, info:Lcom/android/htccontacts/HtcContactInfo;
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    #getter for: Lcom/android/htccontacts/HtcContactInfo;->mIsLoad:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcContactInfo;->access$000(Lcom/android/htccontacts/HtcContactInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
