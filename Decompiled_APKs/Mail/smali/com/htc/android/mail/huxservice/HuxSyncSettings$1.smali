.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #getter for: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$100(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #getter for: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mSyncAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$000(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$1$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 615
    return-void
.end method
