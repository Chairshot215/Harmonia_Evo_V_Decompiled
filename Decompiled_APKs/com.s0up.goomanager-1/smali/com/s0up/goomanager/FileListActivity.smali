.class public Lcom/s0up/goomanager/FileListActivity;
.super Landroid/app/Activity;
.source "FileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;,
        Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;
    }
.end annotation


# instance fields
.field private mBoardName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private AddArrayToList()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 49
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s0up/goomanager/Singleton;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 50
    .local v2, fileArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_0
    const-string v1, "Unable to find any files in this folder"

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/s0up/goomanager/FileListActivity;->finish()V

    .line 58
    :cond_1
    move-object v6, v2

    .line 59
    .local v6, fileData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/FileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 60
    .local v7, lstBrowse:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 61
    const v3, 0x7f030011

    new-array v4, v9, [Ljava/lang/String;

    .line 62
    const-string v1, "title"

    aput-object v1, v4, v5

    const-string v1, "path"

    aput-object v1, v4, v8

    .line 63
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 60
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 66
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 69
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setClickable(Z)V

    .line 70
    new-instance v1, Lcom/s0up/goomanager/FileListActivity$1;

    invoke-direct {v1, p0, v6}, Lcom/s0up/goomanager/FileListActivity$1;-><init>(Lcom/s0up/goomanager/FileListActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    return-void

    .line 54
    .end local v0           #adapter:Landroid/widget/SimpleAdapter;
    .end local v6           #fileData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7           #lstBrowse:Landroid/widget/ListView;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No roms were found for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    :array_0
    .array-data 0x4
        0x3bt 0x0t 0x9t 0x7ft
        0x3ct 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/FileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/s0up/goomanager/FileListActivity;->AddArrayToList()V

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/FileListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;

    return-object v0
.end method

.method private rebootRecovery()V
    .locals 4

    .prologue
    .line 102
    new-instance v1, Lcom/s0up/goomanager/FileListActivity$2;

    invoke-direct {v1, p0}, Lcom/s0up/goomanager/FileListActivity$2;-><init>(Lcom/s0up/goomanager/FileListActivity;)V

    .line 114
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 116
    const-string v2, "Confirm download, reboot, and install"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    const-string v2, "By clicking yes, your phone will request root and reboot to recovery"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 118
    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return-void
.end method


# virtual methods
.method public ListFiles(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extras"

    .prologue
    .line 42
    const-string v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "/"

    .line 44
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;-><init>(Lcom/s0up/goomanager/FileListActivity;Landroid/os/Bundle;)V

    .line 45
    .local v0, p:Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/FileListActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/s0up/goomanager/FileListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_0
    const-string v1, "board"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/FileListActivity;->ListFiles(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    invoke-virtual {p0}, Lcom/s0up/goomanager/FileListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 171
    .local v0, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f03000e

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const v4, 0x7f090034

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 174
    .local v1, search:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 176
    .local v3, v:Landroid/widget/SearchView;
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FileListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 177
    .local v2, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/s0up/goomanager/FileListActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 179
    .end local v2           #searchManager:Landroid/app/SearchManager;
    .end local v3           #v:Landroid/widget/SearchView;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 226
    :goto_0
    return v9

    .line 197
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v2, homeActivity:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    .end local v2           #homeActivity:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/s0up/goomanager/FileListActivity;->rebootRecovery()V

    goto :goto_0

    .line 205
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/s0up/goomanager/FileListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v3, installRecoveryIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    .end local v3           #installRecoveryIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/AboutActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, aboutIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    .end local v0           #aboutIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/SettingsActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v5, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;-><init>(Lcom/s0up/goomanager/FileListActivity;Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;)V

    .line 218
    .local v5, updateCheck:Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;
    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "update"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 221
    .end local v5           #updateCheck:Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v1, flashActivity:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x7f09002d
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
