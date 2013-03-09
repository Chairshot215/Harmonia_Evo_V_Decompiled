.class public Lcom/s0up/goomanager/FileChooser;
.super Landroid/app/ListActivity;
.source "FileChooser.java"


# instance fields
.field private adapter:Lcom/s0up/goomanager/FileArrayAdapter;

.field private currentDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private fill(Ljava/io/File;)V
    .locals 12
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, dirs:[Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Current Dir: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FileChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, dir:Ljava/util/List;,"Ljava/util/List<Lcom/s0up/goomanager/FileListOption;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, fls:Ljava/util/List;,"Ljava/util/List<Lcom/s0up/goomanager/FileListOption;>;"
    :try_start_0
    array-length v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 69
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 70
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "sdcard"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    new-instance v4, Lcom/s0up/goomanager/FileListOption;

    const-string v6, ".."

    const-string v7, "Parent Directory"

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/s0up/goomanager/FileListOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    :cond_0
    new-instance v4, Lcom/s0up/goomanager/FileArrayAdapter;

    const v5, 0x7f030003

    .line 76
    invoke-direct {v4, p0, v5, v0}, Lcom/s0up/goomanager/FileArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    iput-object v4, p0, Lcom/s0up/goomanager/FileChooser;->adapter:Lcom/s0up/goomanager/FileArrayAdapter;

    .line 77
    iget-object v4, p0, Lcom/s0up/goomanager/FileChooser;->adapter:Lcom/s0up/goomanager/FileArrayAdapter;

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FileChooser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v4, p0, Lcom/s0up/goomanager/FileChooser;->adapter:Lcom/s0up/goomanager/FileArrayAdapter;

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FileChooser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void

    .line 56
    :cond_1
    :try_start_1
    aget-object v2, v1, v4

    .line 57
    .local v2, ff:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    new-instance v7, Lcom/s0up/goomanager/FileListOption;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Folder"

    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/s0up/goomanager/FileListOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_2
    new-instance v7, Lcom/s0up/goomanager/FileListOption;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File Size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/s0up/goomanager/FileListOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 65
    .end local v2           #ff:Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s0up/goomanager/FileChooser;->currentDir:Ljava/io/File;

    .line 30
    iget-object v0, p0, Lcom/s0up/goomanager/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/s0up/goomanager/FileChooser;->fill(Ljava/io/File;)V

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 36
    invoke-virtual {p0}, Lcom/s0up/goomanager/FileChooser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 38
    const/4 v1, 0x1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 86
    iget-object v2, p0, Lcom/s0up/goomanager/FileChooser;->adapter:Lcom/s0up/goomanager/FileArrayAdapter;

    invoke-virtual {v2, p3}, Lcom/s0up/goomanager/FileArrayAdapter;->getItem(I)Lcom/s0up/goomanager/FileListOption;

    move-result-object v1

    .line 87
    .local v1, o:Lcom/s0up/goomanager/FileListOption;
    invoke-virtual {v1}, Lcom/s0up/goomanager/FileListOption;->getData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/s0up/goomanager/FileListOption;->getData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent directory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/s0up/goomanager/FileListOption;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/s0up/goomanager/FileChooser;->currentDir:Ljava/io/File;

    .line 90
    iget-object v2, p0, Lcom/s0up/goomanager/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/s0up/goomanager/FileChooser;->fill(Ljava/io/File;)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s0up/goomanager/FileListOption;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/Singleton;->addManualFilesZip(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    invoke-virtual {v1}, Lcom/s0up/goomanager/FileListOption;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DOWNLOADED"

    invoke-virtual {v2, v3, v4}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/FileChooser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 44
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s0up/goomanager/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, aboutIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/FileChooser;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x7f090033
        :pswitch_0
    .end packed-switch
.end method
