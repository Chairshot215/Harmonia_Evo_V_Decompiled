.class public Lcom/htc/store/module/SipLauncher;
.super Ljava/lang/Object;
.source "SipLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SipLauncher"


# instance fields
.field private mImeReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/store/module/SipLauncher;->mImeReceivers:Ljava/util/HashMap;

    .line 22
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/store/module/SipLauncher;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher;->mImeReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/module/SipLauncher;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    return-void
.end method

.method public hide(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/htc/store/module/SipLauncher;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public show(Landroid/widget/EditText;)V
    .locals 4
    .parameter "editText"

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 36
    .local v0, hashCode:I
    iget-object v2, p0, Lcom/htc/store/module/SipLauncher;->mImeReceivers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    .line 37
    .local v1, imeReceiver:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;
    if-nez v1, :cond_2

    .line 38
    new-instance v1, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;

    .end local v1           #imeReceiver:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;
    iget-object v2, p0, Lcom/htc/store/module/SipLauncher;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v1, v2, p1}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 39
    .restart local v1       #imeReceiver:Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;
    iget-object v2, p0, Lcom/htc/store/module/SipLauncher;->mImeReceivers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/htc/store/module/SipLauncher;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/module/SipLauncher$LaunchImeReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
