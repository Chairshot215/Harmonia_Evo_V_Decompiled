.class public Lcom/s0up/goomanager/DownloadActivity;
.super Landroid/app/Activity;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/DownloadActivity$ButtonListener;,
        Lcom/s0up/goomanager/DownloadActivity$StartDownload;
    }
.end annotation


# instance fields
.field DOWNLOAD_PATH:Ljava/lang/String;

.field adapter:Landroid/widget/ListAdapter;

.field private fileDescription:Ljava/lang/String;

.field private fileMd5:Ljava/lang/String;

.field private gappsLink:Ljava/lang/String;

.field private gappsMd5:Ljava/lang/String;

.field private has_gapps:Ljava/lang/Boolean;

.field list:Landroid/widget/ListView;

.field private pathLink:Ljava/lang/String;

.field private pathText:Ljava/lang/String;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->has_gapps:Ljava/lang/Boolean;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->pathText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadActivity;->has_gapps:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v9, 0x7f03000f

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_0
    const-string v9, "pathText"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->pathText:Ljava/lang/String;

    .line 51
    const-string v9, "pathLink"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;

    .line 52
    const-string v9, "gappsLink"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;

    .line 53
    const-string v9, "fileDescription"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->fileDescription:Ljava/lang/String;

    .line 54
    const-string v9, "fileMd5"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;

    .line 55
    const-string v9, "gappsMd5"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsMd5:Ljava/lang/String;

    .line 56
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Gapps md5 is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsMd5:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    const-string v9, "goomanager"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/s0up/goomanager/DownloadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 60
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v9, "download_path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/goomanager/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 62
    const v9, 0x7f090035

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    .line 64
    .local v6, tabs:Landroid/widget/TabHost;
    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 66
    const-string v9, "tab_one_btn_tab"

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 67
    .local v4, tab_one:Landroid/widget/TabHost$TabSpec;
    const v9, 0x7f090036

    invoke-virtual {v4, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 68
    const-string v9, "Download and share"

    invoke-virtual {v4, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 69
    invoke-virtual {v6, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    const-string v9, "tab_two_btn_tab"

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 72
    .local v5, tab_two:Landroid/widget/TabHost$TabSpec;
    const v9, 0x7f090037

    invoke-virtual {v5, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 73
    const-string v9, "View Changelog"

    invoke-virtual {v5, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 74
    invoke-virtual {v6, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 78
    :cond_1
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 79
    const-string v10, "download"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    .line 80
    const-string v10, "share"

    aput-object v10, v2, v9

    .line 82
    .local v2, mStrings:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 83
    const-string v10, "Begin download"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 84
    const-string v10, "Share"

    aput-object v10, v1, v9

    .line 86
    .local v1, mCaption:[Ljava/lang/String;
    const v9, 0x7f09002c

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->list:Landroid/widget/ListView;

    .line 87
    new-instance v9, Lcom/s0up/goomanager/LazyAdapter;

    invoke-direct {v9, p0, v2, v1}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->adapter:Landroid/widget/ListAdapter;

    .line 88
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->list:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/s0up/goomanager/DownloadActivity;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    :goto_0
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->list:Landroid/widget/ListView;

    new-instance v10, Lcom/s0up/goomanager/DownloadActivity$1;

    invoke-direct {v10, p0}, Lcom/s0up/goomanager/DownloadActivity$1;-><init>(Lcom/s0up/goomanager/DownloadActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    const v9, 0x7f090009

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 140
    .local v8, txtFileName:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File name\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/s0up/goomanager/DownloadActivity;->pathText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v9, 0x7f09000e

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 143
    .local v7, txtFileDescription:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->fileDescription:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->fileDescription:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 144
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->fileDescription:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v9, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v9}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    :goto_1
    return-void

    .line 91
    .end local v1           #mCaption:[Ljava/lang/String;
    .end local v2           #mStrings:[Ljava/lang/String;
    .end local v7           #txtFileDescription:Landroid/widget/TextView;
    .end local v8           #txtFileName:Landroid/widget/TextView;
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->has_gapps:Ljava/lang/Boolean;

    .line 92
    const/4 v9, 0x3

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 93
    const-string v10, "download"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    .line 94
    const-string v10, "download"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    .line 95
    const-string v10, "share"

    aput-object v10, v2, v9

    .line 98
    .restart local v2       #mStrings:[Ljava/lang/String;
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 99
    const-string v10, "Begin download"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 100
    const-string v10, "Download GApps"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    .line 101
    const-string v10, "Share"

    aput-object v10, v1, v9

    .line 103
    .restart local v1       #mCaption:[Ljava/lang/String;
    const v9, 0x7f09002c

    invoke-virtual {p0, v9}, Lcom/s0up/goomanager/DownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->list:Landroid/widget/ListView;

    .line 104
    new-instance v9, Lcom/s0up/goomanager/LazyAdapter;

    invoke-direct {v9, p0, v2, v1}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->adapter:Landroid/widget/ListAdapter;

    .line 105
    iget-object v9, p0, Lcom/s0up/goomanager/DownloadActivity;->list:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/s0up/goomanager/DownloadActivity;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 148
    .restart local v7       #txtFileDescription:Landroid/widget/TextView;
    .restart local v8       #txtFileName:Landroid/widget/TextView;
    :cond_3
    const-string v9, "The developer has not input any information about this file."

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public share(Ljava/lang/String;)V
    .locals 3
    .parameter "link"

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Via goo-inside.me"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "Select an action for sharing"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
