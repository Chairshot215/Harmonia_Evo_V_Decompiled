.class public Lcom/htc/omadm/test/TestMainActivity;
.super Landroid/app/ListActivity;
.source "TestMainActivity.java"


# instance fields
.field private final DBG:Z

.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 21
    const-string v0, "TestMainActivity"

    iput-object v0, p0, Lcom/htc/omadm/test/TestMainActivity;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/test/TestMainActivity;->DBG:Z

    return-void
.end method

.method private verifySystemAPI()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v1, "OMADM Test client"

    invoke-virtual {p0, v1}, Lcom/htc/omadm/test/TestMainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GUI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "API"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Roaming Settings"

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 33
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/htc/omadm/test/TestMainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 38
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, i:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/omadm/test/TestMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void

    .line 44
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-class v1, Lcom/htc/omadm/test/TestGUIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .restart local v0       #i:Landroid/content/Intent;
    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-class v1, Lcom/htc/omadm/test/TestAPIActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .restart local v0       #i:Landroid/content/Intent;
    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-class v1, Lcom/htc/omadm/test/TestRoamingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #i:Landroid/content/Intent;
    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
