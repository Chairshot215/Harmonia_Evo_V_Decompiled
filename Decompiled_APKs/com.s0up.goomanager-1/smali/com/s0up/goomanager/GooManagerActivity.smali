.class public Lcom/s0up/goomanager/GooManagerActivity;
.super Landroid/app/Activity;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;,
        Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;,
        Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;,
        Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;,
        Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;
    }
.end annotation


# static fields
.field public static final DATA_DIRECTORY:Ljava/lang/String; = "/data/data/com.s0up.goomanager/"

.field public static final DOMAIN:Ljava/lang/String; = "goo.im"

.field public static DOWNLOAD_PATH:Ljava/lang/String; = null

.field public static final HTTP_URL:Ljava/lang/String; = "http://goo.im"

.field public static final TAG:Ljava/lang/String; = "GooManager"


# instance fields
.field adapter:Lcom/s0up/goomanager/LazyAdapter;

.field isLoggedin:Z

.field list:Landroid/widget/ListView;

.field receiver:Landroid/content/BroadcastReceiver;

.field settings:Landroid/content/SharedPreferences;

.field updateFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    sput-object v0, Lcom/s0up/goomanager/GooManagerActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/GooManagerActivity;->isLoggedin:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/GooManagerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity;->copyFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/s0up/goomanager/GooManagerActivity;->rebootRecovery()V

    return-void
.end method

.method private copyFile(Ljava/lang/String;)V
    .locals 10
    .parameter "filename"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 266
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 267
    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 269
    .local v5, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/data/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, newFileName:Ljava/lang/String;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    .line 275
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 278
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 279
    const/4 v3, 0x0

    .line 280
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 281
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 282
    const/4 v5, 0x0

    .line 287
    .end local v1           #buffer:[B
    .end local v4           #newFileName:Ljava/lang/String;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #read:I
    .restart local v5       #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 276
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v4       #newFileName:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v7       #read:I
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    .end local v1           #buffer:[B
    .end local v7           #read:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 284
    .end local v4           #newFileName:Ljava/lang/String;
    .end local v6           #out:Ljava/io/OutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #out:Ljava/io/OutputStream;
    :goto_2
    const-string v8, "tag"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private rebootRecovery()V
    .locals 4

    .prologue
    .line 207
    new-instance v1, Lcom/s0up/goomanager/GooManagerActivity$3;

    invoke-direct {v1, p0}, Lcom/s0up/goomanager/GooManagerActivity$3;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    .line 219
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 221
    const-string v2, "Confirm reboot recovery"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 222
    const-string v2, "By clicking yes, your phone will request root and reboot to recovery"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 223
    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 224
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/GooManagerActivity;->setContentView(I)V

    .line 61
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->hasSu()Ljava/lang/Boolean;

    .line 63
    const-string v4, "goomanager"

    invoke-virtual {p0, v4, v6}, Lcom/s0up/goomanager/GooManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->settings:Landroid/content/SharedPreferences;

    .line 64
    iget-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->settings:Landroid/content/SharedPreferences;

    const-string v7, "mHash"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, prefHash:Ljava/lang/String;
    iget-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->settings:Landroid/content/SharedPreferences;

    const-string v7, "download_path"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/goomanager/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/s0up/goomanager/GooManagerActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 68
    new-instance v4, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;-><init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;)V

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    new-instance v4, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;-><init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;)V

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 75
    .local v3, zipPath:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 76
    new-instance v4, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;-><init>(Lcom/s0up/goomanager/GooManagerActivity;Ljava/lang/String;)V

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->isLoggedin:Z

    .line 86
    const/16 v4, 0x8

    new-array v1, v4, [Ljava/lang/String;

    .line 87
    const-string v4, "icon_install"

    aput-object v4, v1, v6

    .line 88
    const-string v4, "icon_browse"

    aput-object v4, v1, v5

    .line 89
    const-string v4, "icon_update"

    aput-object v4, v1, v10

    .line 90
    const-string v4, "icon_gapps"

    aput-object v4, v1, v11

    .line 91
    const-string v4, "icon_reboot"

    aput-object v4, v1, v12

    const/4 v4, 0x5

    .line 92
    const-string v7, "icon_flash_rom"

    aput-object v7, v1, v4

    const/4 v4, 0x6

    .line 93
    const-string v7, "icon_settings"

    aput-object v7, v1, v4

    const/4 v4, 0x7

    .line 94
    const-string v7, "icon_login"

    aput-object v7, v1, v4

    .line 97
    .local v1, mStrings:[Ljava/lang/String;
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/String;

    .line 98
    const-string v4, "Browse compatible ROMs"

    aput-object v4, v0, v6

    .line 99
    const-string v4, "Browse all files"

    aput-object v4, v0, v5

    .line 100
    const-string v4, "Check for updates"

    aput-object v4, v0, v10

    .line 101
    const-string v4, "Download gapps packages"

    aput-object v4, v0, v11

    .line 102
    const-string v4, "Reboot recovery"

    aput-object v4, v0, v12

    const/4 v4, 0x5

    .line 103
    const-string v5, "Flash ROMs"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    .line 104
    const-string v5, "Settings"

    aput-object v5, v0, v4

    const/4 v5, 0x7

    .line 105
    iget-boolean v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->isLoggedin:Z

    if-eqz v4, :cond_2

    const-string v4, "Logout"

    :goto_1
    aput-object v4, v0, v5

    .line 108
    .local v0, mCaption:[Ljava/lang/String;
    const v4, 0x7f09002c

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/GooManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->list:Landroid/widget/ListView;

    .line 109
    new-instance v4, Lcom/s0up/goomanager/LazyAdapter;

    invoke-direct {v4, p0, v1, v0}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->adapter:Lcom/s0up/goomanager/LazyAdapter;

    .line 110
    iget-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->list:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/s0up/goomanager/GooManagerActivity;->adapter:Lcom/s0up/goomanager/LazyAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/s0up/goomanager/GooManagerActivity$1;

    invoke-direct {v5, p0}, Lcom/s0up/goomanager/GooManagerActivity$1;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    new-instance v4, Lcom/s0up/goomanager/GooManagerActivity$2;

    invoke-direct {v4, p0}, Lcom/s0up/goomanager/GooManagerActivity$2;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    iput-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.s0up.goomanager.NO_UPDATES"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/s0up/goomanager/GooManagerActivity;->updateFilter:Landroid/content/IntentFilter;

    .line 189
    return-void

    .end local v0           #mCaption:[Ljava/lang/String;
    .end local v1           #mStrings:[Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 85
    goto/16 :goto_0

    .line 105
    .restart local v1       #mStrings:[Ljava/lang/String;
    :cond_2
    const-string v4, "Login"

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 402
    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 403
    .local v0, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f03000e

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 404
    const v4, 0x7f090034

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 405
    .local v1, search:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 407
    .local v3, v:Landroid/widget/SearchView;
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/GooManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 408
    .local v2, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 410
    .end local v2           #searchManager:Landroid/app/SearchManager;
    .end local v3           #v:Landroid/widget/SearchView;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v2, i:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 446
    :goto_0
    return v9

    .line 417
    :pswitch_0
    const-string v6, "path"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-direct {p0}, Lcom/s0up/goomanager/GooManagerActivity;->rebootRecovery()V

    goto :goto_0

    .line 425
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/s0up/goomanager/GooManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v3, installRecoveryIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    .end local v3           #installRecoveryIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/AboutActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v0, aboutIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 433
    .end local v0           #aboutIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/SettingsActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 437
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v5, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;-><init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;)V

    .line 438
    .local v5, updateCheck:Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;
    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "update"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 441
    .end local v5           #updateCheck:Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v1, flashActivity:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 415
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

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/GooManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/s0up/goomanager/GooManagerActivity;->updateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/s0up/goomanager/GooManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method
