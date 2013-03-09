.class Lcom/htc/socialnetwork/account/AccountReceiver$1;
.super Ljava/lang/Thread;
.source "AccountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/AccountReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/AccountReceiver;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/AccountReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/socialnetwork/account/AccountReceiver$1;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 54
    iget-object v6, p0, Lcom/htc/socialnetwork/account/AccountReceiver$1;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    invoke-virtual {v6}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSyncableProviders()[Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, providers:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/socialnetwork/account/AccountReceiver$1;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    iget-object v6, v6, Lcom/htc/socialnetwork/account/AccountReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/socialnetwork/account/AccountReceiver$1;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    invoke-virtual {v7}, Lcom/htc/socialnetwork/account/AccountReceiver;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSingleLoginAccountForType(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 57
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 58
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 59
    .local v4, provider:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v4, v6}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #provider:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/socialnetwork/account/AccountReceiver$1;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    .line 64
    return-void
.end method
