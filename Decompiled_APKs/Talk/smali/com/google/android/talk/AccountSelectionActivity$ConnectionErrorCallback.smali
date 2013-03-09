.class Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionErrorCallback"
.end annotation


# instance fields
.field private mError:Lcom/google/android/gtalkservice/ConnectionError;

.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/gtalkservice/ConnectionError;)V
    .locals 0
    .parameter
    .parameter "error"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    .line 654
    return-void
.end method

.method private promptForCredentials()V
    .locals 7

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prompt for passwd for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v2}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 714
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #getter for: Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->access$200(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .local v1, account:Landroid/accounts/Account;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v3, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "ac2dm"

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    new-instance v5, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;

    invoke-direct {v5, p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback$1;-><init>(Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 746
    return-void
.end method

.method private showConnectionOrServerErrors()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AccountSelectionActivity;->showDialog(I)V

    .line 708
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 657
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v5}, Lcom/google/android/talk/AccountSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 658
    .local v3, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->mError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    .line 659
    .local v0, errorCode:I
    :goto_0
    const/4 v1, 0x1

    .line 661
    .local v1, hideNetworkError:Z
    if-nez v0, :cond_2

    .line 699
    :goto_1
    if-eqz v1, :cond_0

    .line 700
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->hideNetworkError()V
    invoke-static {v5}, Lcom/google/android/talk/AccountSelectionActivity;->access$1000(Lcom/google/android/talk/AccountSelectionActivity;)V

    .line 702
    :cond_0
    return-void

    .line 658
    .end local v0           #errorCode:I
    .end local v1           #hideNetworkError:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    .restart local v0       #errorCode:I
    .restart local v1       #hideNetworkError:Z
    :cond_2
    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->isNetworkError(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 664
    const/4 v2, 0x0

    .line 666
    .local v2, noNetwork:Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 667
    const v4, 0x7f0c0062

    .line 668
    .local v4, stringRes:I
    const/4 v2, 0x1

    .line 673
    :goto_2
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->showNetworkError(I)V
    invoke-static {v5, v4}, Lcom/google/android/talk/AccountSelectionActivity;->access$700(Lcom/google/android/talk/AccountSelectionActivity;I)V

    .line 674
    const/4 v1, 0x0

    .line 677
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->displayPendingConnectMode(Z)V
    invoke-static {v5, v2}, Lcom/google/android/talk/AccountSelectionActivity;->access$800(Lcom/google/android/talk/AccountSelectionActivity;Z)V

    goto :goto_1

    .line 670
    .end local v4           #stringRes:I
    :cond_3
    const v4, 0x7f0c0061

    .restart local v4       #stringRes:I
    goto :goto_2

    .line 679
    .end local v2           #noNetwork:Z
    .end local v4           #stringRes:I
    :cond_4
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const/4 v6, 0x0

    #setter for: Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$902(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 681
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 684
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->promptForCredentials()V

    goto :goto_1

    .line 688
    :pswitch_2
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const v6, 0x7f0c0063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$902(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->showConnectionOrServerErrors()V

    goto :goto_1

    .line 693
    :pswitch_3
    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const v6, 0x7f0c0064

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/talk/AccountSelectionActivity;->access$902(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;->showConnectionOrServerErrors()V

    goto :goto_1

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
