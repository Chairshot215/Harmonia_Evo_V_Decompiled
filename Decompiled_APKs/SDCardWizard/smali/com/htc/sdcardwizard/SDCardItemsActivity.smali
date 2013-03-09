.class public final Lcom/htc/sdcardwizard/SDCardItemsActivity;
.super Lcom/htc/sdcardwizard/WaitingDialogActivity;
.source "SDCardItemsActivity.java"

# interfaces
.implements Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;
    }
.end annotation


# instance fields
.field private adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

.field private deleteButton:Landroid/widget/Button;

.field private handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

.field mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

.field private moveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;-><init>()V

    .line 235
    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    .line 236
    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;

    .line 237
    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    .line 240
    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    .line 241
    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/SDCardItemsAdapter;)Lcom/htc/sdcardwizard/SDCardItemsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->adapter:Lcom/htc/sdcardwizard/SDCardItemsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Lcom/htc/sdcardwizard/handler/CasperHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sdcardwizard/SDCardItemsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private deleteSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 128
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->showWaitingDialog(I)V

    .line 129
    new-instance v0, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$4;->start()V

    .line 141
    return-void
.end method

.method private initCancelButton()V
    .locals 2

    .prologue
    .line 82
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$1;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private initDeleteButton()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getDeleteButtonCaptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$3;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initMoveToSdButton()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/htc/sdcardwizard/CategoryItem$Storage;->BOTH_STORAGES:Lcom/htc/sdcardwizard/CategoryItem$Storage;

    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getStorageType()Lcom/htc/sdcardwizard/CategoryItem$Storage;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    const v1, 0x7f04001d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$2;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getTitleId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->setHeader(I)V

    .line 62
    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->initCancelButton()V

    .line 63
    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->initMoveToSdButton()V

    .line 64
    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->initDeleteButton()V

    .line 68
    new-instance v0, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;

    invoke-direct {v0, p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;)V

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$InitializingThread;->start()V

    .line 69
    return-void
.end method

.method private moveSelectedItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 144
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->showWaitingDialog(I)V

    .line 145
    new-instance v0, Lcom/htc/sdcardwizard/SDCardItemsActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsActivity$5;-><init>(Lcom/htc/sdcardwizard/SDCardItemsActivity;Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity$5;->start()V

    .line 157
    return-void
.end method

.method private setHandler()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/htc/sdcardwizard/handler/CasperHandler;->extractCategoryID(Landroid/content/Intent;)Lcom/htc/sdcardwizard/handler/CategoryID;

    move-result-object v0

    .line 57
    .local v0, categoryId:Lcom/htc/sdcardwizard/handler/CategoryID;
    invoke-static {p0, v0}, Lcom/htc/sdcardwizard/handler/SDCardHandlerFactory;->getCasperHandler(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/CategoryID;)Lcom/htc/sdcardwizard/handler/CasperHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->handler:Lcom/htc/sdcardwizard/handler/CasperHandler;

    .line 58
    return-void
.end method

.method private setHeader(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 73
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarShort;

    .line 74
    .local v0, headerBar:Lcom/htc/widget/HeaderBarShort;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarShort;->enableSecondBackground(Z)V

    .line 75
    new-instance v1, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, headerText:Lcom/htc/widget/HeaderBarText;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 77
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarShort;->addLeftView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->setHandler()V

    .line 29
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->initUI()V

    .line 32
    new-instance v0, Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-direct {v0, p0, p0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/MountSdCardReceiver$OnUnmountListener;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    .line 33
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onPause()V

    .line 45
    sget-object v0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->TAG:Ljava/lang/String;

    const-string v1, "unregister MounSdCardReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->unregisterReceiver()V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/sdcardwizard/WaitingDialogActivity;->onResume()V

    .line 38
    sget-object v0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->TAG:Ljava/lang/String;

    const-string v1, "register MounSdCardReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsActivity;->mountSDCardReceiver:Lcom/htc/sdcardwizard/MountSdCardReceiver;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/MountSdCardReceiver;->registerReceiver()V

    .line 40
    return-void
.end method

.method public onUnMount(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardItemsActivity;->finish()V

    .line 52
    return-void
.end method
