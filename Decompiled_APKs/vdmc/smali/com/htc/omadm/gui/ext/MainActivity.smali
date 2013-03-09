.class public Lcom/htc/omadm/gui/ext/MainActivity;
.super Landroid/app/ListActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/gui/ext/MainActivity$1;,
        Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;
    }
.end annotation


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mGui:Lcom/htc/omadm/gui/ext/DMGui;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/ext/MainActivity;->DBG:Z

    .line 19
    const-string v0, "DMGuiTest"

    iput-object v0, p0, Lcom/htc/omadm/gui/ext/MainActivity;->LOG_TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/htc/omadm/gui/ext/MainActivity;)Lcom/htc/omadm/gui/ext/DMGui;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/ext/MainActivity;->setRequestedOrientation(I)V

    .line 27
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Alert Dialog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Progress Dialog"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Progress Bar"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 32
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/MainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance v1, Lcom/htc/omadm/gui/ext/DMGui;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/MainActivity;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/omadm/gui/ext/DMGui;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    .line 36
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/ext/DMGui;->resetParameter()V

    .line 44
    packed-switch p3, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/ext/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    :cond_0
    return-void

    .line 46
    :pswitch_1
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "Test Title"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setTitle(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "Test Message"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setMessage(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "OK"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setButtonStyle(ILjava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/ext/DMGui;->showNormalGUI()V

    .line 50
    new-instance v1, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;-><init>(Lcom/htc/omadm/gui/ext/MainActivity;Lcom/htc/omadm/gui/ext/MainActivity$1;)V

    .line 51
    .local v1, pp:Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;
    invoke-virtual {v1}, Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;->start()V

    goto :goto_0

    .line 54
    .end local v1           #pp:Lcom/htc/omadm/gui/ext/MainActivity$ProcessThread;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "Test Title"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setTitle(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "Test Message"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setMessage(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    const-string v3, "OK"

    invoke-virtual {v2, v4, v3}, Lcom/htc/omadm/gui/ext/DMGui;->setButtonStyle(ILjava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-virtual {v2, v4}, Lcom/htc/omadm/gui/ext/DMGui;->setDisableBackKey(Z)V

    .line 58
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/MainActivity;->mGui:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/ext/DMGui;->showNormalGUI()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
