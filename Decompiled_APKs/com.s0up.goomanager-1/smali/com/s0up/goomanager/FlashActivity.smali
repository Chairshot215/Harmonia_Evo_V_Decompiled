.class public Lcom/s0up/goomanager/FlashActivity;
.super Landroid/app/Activity;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/FlashActivity$ButtonListener;,
        Lcom/s0up/goomanager/FlashActivity$DeleteSelected;,
        Lcom/s0up/goomanager/FlashActivity$FileName;,
        Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;,
        Lcom/s0up/goomanager/FlashActivity$FileNameViewHolder;,
        Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;,
        Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GooManager.FlashActivity"

.field public static mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;


# instance fields
.field private active:Ljava/lang/Boolean;

.field private dialogNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private dialogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFileNameAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/s0up/goomanager/FlashActivity$FileName;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashListView:Landroid/widget/ListView;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->active:Ljava/lang/Boolean;

    .line 92
    new-instance v0, Lcom/s0up/goomanager/FlashActivity$1;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/FlashActivity$1;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->dialogNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    new-instance v0, Lcom/s0up/goomanager/FlashActivity$2;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/FlashActivity$2;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->dialogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/FlashActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->dialogNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->dialogPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/s0up/goomanager/FlashActivity;->getZipFiles()V

    return-void
.end method

.method static synthetic access$5(Lcom/s0up/goomanager/FlashActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->mFileNameAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private confirmDelete(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 346
    new-instance v1, Lcom/s0up/goomanager/FlashActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/s0up/goomanager/FlashActivity$4;-><init>(Lcom/s0up/goomanager/FlashActivity;Ljava/lang/String;)V

    .line 364
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 366
    const-string v2, "Confirm deletion"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    const-string v2, "Are you sure you would like to do this?\nThis operation cannot be undone.\n"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 368
    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 369
    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    return-void
.end method

.method private getZipFiles()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 178
    const-string v11, "goomanager"

    invoke-virtual {p0, v11, v14}, Lcom/s0up/goomanager/FlashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 179
    .local v8, settings:Landroid/content/SharedPreferences;
    const-string v11, "download_path"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/goomanager/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, DOWNLOAD_PATH:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, gooFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 184
    const-string v11, "GooManager.FlashActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "GooManager folder location: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, gooManagerFilesAll:[Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v11

    invoke-virtual {v11}, Lcom/s0up/goomanager/Singleton;->getManualFiles()[Ljava/lang/String;

    move-result-object v7

    .local v7, manualFiles:[Ljava/lang/String;
    move-object v3, v10

    .line 190
    check-cast v3, [Ljava/lang/String;

    .line 192
    .local v3, gooManagerFiles:[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 193
    invoke-virtual {p0, v4, v7}, Lcom/s0up/goomanager/FlashActivity;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 199
    :goto_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 202
    const/4 v9, 0x0

    .line 203
    .local v9, zipCount:I
    const/4 v6, 0x0

    .line 205
    .local v6, listCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v3

    if-lt v5, v10, :cond_1

    .line 211
    new-array v10, v9, [Lcom/s0up/goomanager/FlashActivity$FileName;

    sput-object v10, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    .line 213
    const/4 v5, 0x0

    :goto_2
    array-length v10, v3

    if-lt v5, v10, :cond_3

    .line 227
    const/4 v5, 0x0

    :goto_3
    if-lt v5, v6, :cond_6

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/s0up/goomanager/FlashActivity$FileName;>;"
    sget-object v10, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    new-instance v10, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;

    invoke-direct {v10, p0, v1}, Lcom/s0up/goomanager/FlashActivity$FileNameArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v10, p0, Lcom/s0up/goomanager/FlashActivity;->mFileNameAdapter:Landroid/widget/ArrayAdapter;

    .line 234
    iget-object v10, p0, Lcom/s0up/goomanager/FlashActivity;->mFlashListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/s0up/goomanager/FlashActivity;->mFileNameAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    .end local v1           #fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/s0up/goomanager/FlashActivity$FileName;>;"
    .end local v3           #gooManagerFiles:[Ljava/lang/String;
    .end local v4           #gooManagerFilesAll:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #listCount:I
    .end local v7           #manualFiles:[Ljava/lang/String;
    .end local v9           #zipCount:I
    :goto_4
    return-void

    .line 195
    .restart local v3       #gooManagerFiles:[Ljava/lang/String;
    .restart local v4       #gooManagerFilesAll:[Ljava/lang/String;
    .restart local v7       #manualFiles:[Ljava/lang/String;
    :cond_0
    move-object v3, v4

    goto :goto_0

    .line 206
    .restart local v5       #i:I
    .restart local v6       #listCount:I
    .restart local v9       #zipCount:I
    :cond_1
    aget-object v10, v3, v5

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 207
    add-int/lit8 v9, v9, 0x1

    .line 205
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    :cond_3
    aget-object v10, v3, v5

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 215
    sget-object v10, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    new-instance v11, Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v12, v3, v5

    invoke-direct {v11, v12}, Lcom/s0up/goomanager/FlashActivity$FileName;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v6

    .line 216
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v10, v11}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "DOWNLOADED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 220
    sget-object v10, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v10, v10, v6

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/s0up/goomanager/FlashActivity$FileName;->setChecked(Z)V

    .line 222
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 213
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 228
    :cond_6
    const-string v10, "GooManager.FlashActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File Array: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v12, v12, v5

    iget-object v12, v12, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 237
    .end local v5           #i:I
    .end local v6           #listCount:I
    .end local v9           #zipCount:I
    :cond_7
    const-string v10, "No flashable zips found"

    invoke-static {p0, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 240
    .end local v3           #gooManagerFiles:[Ljava/lang/String;
    .end local v4           #gooManagerFilesAll:[Ljava/lang/String;
    .end local v7           #manualFiles:[Ljava/lang/String;
    :cond_8
    const-string v10, "No GooManager folder"

    invoke-static {p0, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4
.end method


# virtual methods
.method concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v0, both:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FlashActivity;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->hasSu()Ljava/lang/Boolean;

    .line 58
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, zipPath:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 60
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/Singleton;->addManualFilesZip(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DOWNLOADED"

    invoke-virtual {v4, v5, v6}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/s0up/goomanager/FlashActivity;->mFlashListView:Landroid/widget/ListView;

    .line 65
    iget-object v4, p0, Lcom/s0up/goomanager/FlashActivity;->mFlashListView:Landroid/widget/ListView;

    new-instance v5, Lcom/s0up/goomanager/FlashActivity$3;

    invoke-direct {v5, p0}, Lcom/s0up/goomanager/FlashActivity$3;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/s0up/goomanager/FlashActivity;->getZipFiles()V

    .line 78
    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 79
    .local v2, btnFlash:Landroid/widget/Button;
    const v4, 0x7f090016

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/FlashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 81
    .local v1, btnAddZip:Landroid/widget/Button;
    new-instance v4, Lcom/s0up/goomanager/FlashActivity$ButtonListener;

    invoke-direct {v4, p0, v8}, Lcom/s0up/goomanager/FlashActivity$ButtonListener;-><init>(Lcom/s0up/goomanager/FlashActivity;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v4, Lcom/s0up/goomanager/FlashActivity$ButtonListener;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/s0up/goomanager/FlashActivity$ButtonListener;-><init>(Lcom/s0up/goomanager/FlashActivity;I)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v4, "goomanager"

    invoke-virtual {p0, v4, v7}, Lcom/s0up/goomanager/FlashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/s0up/goomanager/FlashActivity;->settings:Landroid/content/SharedPreferences;

    .line 86
    iget-object v4, p0, Lcom/s0up/goomanager/FlashActivity;->settings:Landroid/content/SharedPreferences;

    const-string v5, "seen_recovery_msg"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    .local v0, SEEN_RECOVERY_MSG:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    new-instance v4, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;-><init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;)V

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/FlashActivity$GetRecoveryMsg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 341
    invoke-virtual {p0}, Lcom/s0up/goomanager/FlashActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 342
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 376
    :pswitch_0
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lcom/s0up/goomanager/FlashActivity;->confirmDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_1
    const-string v0, "SELECTED"

    invoke-direct {p0, v0}, Lcom/s0up/goomanager/FlashActivity;->confirmDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x7f090012
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->active:Ljava/lang/Boolean;

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity;->active:Ljava/lang/Boolean;

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    return-void
.end method
