.class Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;
.super Ljava/lang/Object;
.source "AccountsChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/AccountsChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/AccountsChangedReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/AccountsChangedReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/AccountsChangedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, currentAccountName:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 51
    :cond_0
    return-void
.end method
