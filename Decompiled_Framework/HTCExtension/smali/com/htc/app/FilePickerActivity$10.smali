.class Lcom/htc/app/FilePickerActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->hideNoSdCard()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1100(Lcom/htc/app/FilePickerActivity;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->isSDCard:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1202(Lcom/htc/app/FilePickerActivity;Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1300(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1402(Lcom/htc/app/FilePickerActivity;Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->loadFolders()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1500(Lcom/htc/app/FilePickerActivity;)V

    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-boolean v2, v2, Lcom/htc/app/FilePickerActivity;->mActivityStarted:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->loadFiles()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1000(Lcom/htc/app/FilePickerActivity;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v3

    #calls: Lcom/htc/app/FilePickerActivity;->initOptionsMenu(Landroid/view/Menu;)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1700(Lcom/htc/app/FilePickerActivity;Landroid/view/Menu;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1402(Lcom/htc/app/FilePickerActivity;Z)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iput-boolean v3, v2, Lcom/htc/app/FilePickerActivity;->mNeedLoadFiles:Z

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->isSDCard:Z
    invoke-static {v2, v5}, Lcom/htc/app/FilePickerActivity;->access$1202(Lcom/htc/app/FilePickerActivity;Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->hideSearchBar()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1800(Lcom/htc/app/FilePickerActivity;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->hideDialog()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1900(Lcom/htc/app/FilePickerActivity;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerActivity;->closeOptionsMenu()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->isMultiPath:Z
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerActivity;->closeOptionsMenu()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->isMultiPath:Z
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2000(Lcom/htc/app/FilePickerActivity;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1300(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1402(Lcom/htc/app/FilePickerActivity;Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->loadFolders()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1500(Lcom/htc/app/FilePickerActivity;)V

    :goto_2
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->loadFiles()V
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1000(Lcom/htc/app/FilePickerActivity;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->isSDCard:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1202(Lcom/htc/app/FilePickerActivity;Z)Z

    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$1600(Lcom/htc/app/FilePickerActivity;)Landroid/view/Menu;

    move-result-object v3

    #calls: Lcom/htc/app/FilePickerActivity;->initOptionsMenu(Landroid/view/Menu;)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1700(Lcom/htc/app/FilePickerActivity;Landroid/view/Menu;)V

    :cond_9
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->isSdcardRoot:Z
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2300(Lcom/htc/app/FilePickerActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$2400(Lcom/htc/app/FilePickerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$2500(Lcom/htc/app/FilePickerActivity;Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iput-boolean v5, v2, Lcom/htc/app/FilePickerActivity;->mNeedLoadFiles:Z

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mNeedLoadFolders:Z
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$1402(Lcom/htc/app/FilePickerActivity;Z)Z

    goto :goto_2

    :cond_c
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$10;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$2400(Lcom/htc/app/FilePickerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0145

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/app/FilePickerActivity;->showNoSdCard(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$2500(Lcom/htc/app/FilePickerActivity;Ljava/lang/String;)V

    goto :goto_3
.end method
