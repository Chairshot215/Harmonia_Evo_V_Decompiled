.class Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;
.super Ljava/lang/Thread;
.source "PhoneNameEditableHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckThread"
.end annotation


# instance fields
.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "h"

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 800
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;->contextRef:Ljava/lang/ref/WeakReference;

    .line 801
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;->handler:Landroid/os/Handler;

    .line 802
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 805
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 808
    .local v2, simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 809
    const/16 v5, 0x6f3a

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 811
    .local v3, size:[I
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 826
    .end local v2           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    :cond_0
    :goto_0
    return-void

    .line 813
    .restart local v2       #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3       #size:[I
    :cond_1
    const/4 v5, 0x0

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0xe

    invoke-static {v5}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$102(I)I

    .line 814
    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$100()I

    move-result v5

    if-gez v5, :cond_2

    :goto_1
    invoke-static {v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$102(I)I

    .line 816
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    .line 817
    .local v0, context:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 818
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView$CheckThread;->handler:Landroid/os/Handler;

    #getter for: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->mHandleADNAlphaTadLimit:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$400(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    const/4 v4, 0x0

    #setter for: Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isCheckingThreadRunning:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$502(Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v0           #context:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    .end local v2           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "PhoneNameEditableHeaderView"

    const-string v5, " get max  length:   "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 814
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3       #size:[I
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->access$100()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method
