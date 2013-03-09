.class public Lcom/google/android/finsky/utils/AppSupport;
.super Ljava/lang/Object;
.source "AppSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/AppSupport$RefundListener;,
        Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 4
    .parameter "fragmentManager"

    .prologue
    .line 115
    const v1, 0x7f0701a8

    const v2, 0x7f07019f

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 117
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const-string v1, "refund_failure"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V
    .locals 7
    .parameter "packageName"
    .parameter "target"
    .parameter "isSystemPackage"
    .parameter "isOwned"
    .parameter "hasSubscriptions"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 84
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v6, "uninstall_confirm"

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    const v5, 0x7f07019f

    .line 90
    .local v5, positiveId:I
    const v4, 0x7f070059

    .line 91
    .local v4, negativeId:I
    if-eqz p3, :cond_3

    .line 92
    if-eqz p2, :cond_1

    .line 93
    const v3, 0x7f07010a

    .line 105
    .local v3, messageId:I
    :goto_1
    invoke-static {v3, v5, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 106
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, extraArgs:Landroid/os/Bundle;
    const-string v6, "package_name"

    invoke-virtual {v1, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v6, 0x1

    invoke-virtual {v0, p1, v6, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 110
    const-string v6, "uninstall_confirm"

    invoke-virtual {v0, v2, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0           #alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v1           #extraArgs:Landroid/os/Bundle;
    .end local v3           #messageId:I
    :cond_1
    if-eqz p4, :cond_2

    .line 95
    const v3, 0x7f07010c

    .line 96
    .restart local v3       #messageId:I
    const v5, 0x7f0700da

    .line 97
    const v4, 0x7f0700db

    goto :goto_1

    .line 99
    .end local v3           #messageId:I
    :cond_2
    const v3, 0x7f07010b

    .restart local v3       #messageId:I
    goto :goto_1

    .line 102
    .end local v3           #messageId:I
    :cond_3
    const v3, 0x7f07010d

    .restart local v3       #messageId:I
    goto :goto_1
.end method

.method public static silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V
    .locals 6
    .parameter "packageName"
    .parameter "accountName"
    .parameter "listener"

    .prologue
    .line 50
    invoke-interface {p2}, Lcom/google/android/finsky/utils/AppSupport$RefundListener;->onRefundStart()V

    .line 51
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 52
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/library/RevokeListenerWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/utils/AppSupport$1;

    invoke-direct {v5, p2, p0}, Lcom/google/android/finsky/utils/AppSupport$1;-><init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/library/RevokeListenerWrapper;-><init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V

    new-instance v3, Lcom/google/android/finsky/utils/AppSupport$2;

    invoke-direct {v3, p2, p0}, Lcom/google/android/finsky/utils/AppSupport$2;-><init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 73
    return-void
.end method
