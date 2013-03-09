.class Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Sync1x1Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Sync3DWidget/Sync1x1Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;


# direct methods
.method private constructor <init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;Lcom/htc/Sync3DWidget/Sync1x1Widget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;-><init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-static {}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "david button clicked, request synch all mIsSynching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1000(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mIsSynching:Z
    invoke-static {v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1000(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$600(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    #setter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1102(Lcom/htc/Sync3DWidget/Sync1x1Widget;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 254
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    iget-object v1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)[Landroid/accounts/Account;

    move-result-object v1

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1200(Lcom/htc/Sync3DWidget/Sync1x1Widget;[Landroid/accounts/Account;)V

    .line 261
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$SyncClickListener;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->sendUpdateTurningReqToUiThread()V
    invoke-static {v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$1300(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    .line 262
    return-void

    .line 258
    :cond_1
    invoke-static {v3, v3}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method
