.class Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmailTransactionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 6031
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6031
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 6035
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->onContentProviderAccess(Ljava/lang/String;)V

    .line 6037
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6038
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V

    .line 6040
    :cond_0
    return-void
.end method

.method public onCommit()V
    .locals 1

    .prologue
    .line 6046
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6047
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    .line 6049
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 1

    .prologue
    .line 6054
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6055
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V

    .line 6057
    :cond_0
    return-void
.end method
