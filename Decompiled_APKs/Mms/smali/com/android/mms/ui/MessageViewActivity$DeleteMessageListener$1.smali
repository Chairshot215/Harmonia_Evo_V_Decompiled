.class Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v1, 0xc9

    const/4 v2, 0x0

    .line 1978
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1981
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "bg"

    const-string v3, "true"

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1982
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$802(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1985
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mFolderType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$900(Lcom/android/mms/ui/MessageViewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "trash"

    if-eq v0, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1988
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    const-string v3, "true"

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1989
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v0, v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$802(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1993
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1995
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1998
    :cond_2
    const-string v0, "MessageViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final delete uri> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 2000
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;->access$800(Lcom/android/mms/ui/MessageViewActivity$DeleteMessageListener;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2001
    return-void
.end method
