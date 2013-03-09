.class public Lcom/m0narx/tweaks/settings;
.super Landroid/app/Activity;
.source "settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/settings$ProfileListAdapter;,
        Lcom/m0narx/tweaks/settings$ViewHolder;
    }
.end annotation


# static fields
.field private static ProfileToRestore:Ljava/lang/String;


# instance fields
.field CancelB:Lcom/htc/widget/HtcFooterButton;

.field private Cr:Landroid/content/ContentResolver;

.field private ProfileList:Lcom/htc/widget/HtcListView;

.field SaveB:Lcom/htc/widget/HtcFooterButton;

.field private Title:Lcom/htc/widget/HeaderBarText;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbh:Lcom/m0narx/tweaks/DBProvider;

.field private handler:Landroid/os/Handler;

.field inflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

.field private mRes:Landroid/content/res/Resources;

.field private pDialog:Lcom/htc/app/HtcProgressDialog;

.field private prefXMLFile:Ljava/lang/String;

.field private restartMain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/DBProvider;

    .line 59
    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    const-string v0, "/data/data/com.m0narx.tweaks/shared_prefs/com.m0narx.tweaks_preferences.xml"

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    .line 209
    new-instance v0, Lcom/m0narx/tweaks/settings$1;

    invoke-direct {v0, p0}, Lcom/m0narx/tweaks/settings$1;-><init>(Lcom/m0narx/tweaks/settings;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private LoadData()V
    .locals 4

    .prologue
    .line 273
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT id, name FROM profiles;"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 275
    if-nez v1, :cond_0

    .line 278
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_1
    return-void
.end method

.method private NewProfile(Ljava/lang/String;)V
    .locals 8
    .parameter "ProfileName"

    .prologue
    .line 367
    const-string v0, "newprofile"

    .line 368
    .local v0, FileName:Ljava/lang/String;
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INSERT INTO profiles(name) VALUES(\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT id, name FROM profiles;"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 370
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 374
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, ProfileFile:Ljava/lang/String;
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sqlite3 /data/data/com.android.providers.settings/databases/settings.db \"select name,value from system where name like \'tweaks_%\' or name like \'battery_%\'\" >"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V

    .line 380
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, prefFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v3, newFile:Ljava/io/File;
    invoke-static {v4, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 386
    .end local v3           #newFile:Ljava/io/File;
    :cond_2
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5, p1, v0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v4           #prefFile:Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private RenameProfile(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "ProfileName"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE profiles SET name = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v2, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->renameItem(ILjava/lang/String;)V

    .line 363
    return-void
.end method

.method private SaveProfile(ZI)V
    .locals 5
    .parameter "isNew"
    .parameter "index"

    .prologue
    .line 329
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 330
    .local v1, input:Landroid/widget/EditText;
    const v0, 0x7f0500ab

    .line 331
    .local v0, TitleRes:I
    if-nez p1, :cond_0

    .line 332
    const v0, 0x7f0500ac

    .line 333
    iget-object v2, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v2, p2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 336
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    iget-object v3, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 339
    const v3, 0x7f05007c

    .line 340
    new-instance v4, Lcom/m0narx/tweaks/settings$7;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/m0narx/tweaks/settings$7;-><init>(Lcom/m0narx/tweaks/settings;Landroid/widget/EditText;ZI)V

    .line 339
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 351
    const v3, 0x7f05002e

    .line 352
    new-instance v4, Lcom/m0narx/tweaks/settings$8;

    invoke-direct {v4, p0}, Lcom/m0narx/tweaks/settings$8;-><init>(Lcom/m0narx/tweaks/settings;)V

    .line 351
    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 357
    return-void
.end method

.method static synthetic access$0(Lcom/m0narx/tweaks/settings;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/m0narx/tweaks/settings;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/m0narx/tweaks/settings;->restartPhone()V

    return-void
.end method

.method static synthetic access$2(Lcom/m0narx/tweaks/settings;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$3(Lcom/m0narx/tweaks/settings;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    return v0
.end method

.method static synthetic access$4(Lcom/m0narx/tweaks/settings;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/settings;->SaveProfile(ZI)V

    return-void
.end method

.method static synthetic access$5(Lcom/m0narx/tweaks/settings;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/settings;->restoreProfile(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$6(Lcom/m0narx/tweaks/settings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/m0narx/tweaks/settings;->NewProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/m0narx/tweaks/settings;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Lcom/m0narx/tweaks/settings;->RenameProfile(ILjava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 162
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 165
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private removeProfile(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 315
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, FileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".csv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, ProfileFile:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v3, pFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, XMLProfileFile:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, xFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 322
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DELETE FROM profiles WHERE id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v7, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5, p1}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->removeItem(I)V

    .line 324
    iget-object v5, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v5}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->notifyDataSetChanged()V

    .line 325
    return-void
.end method

.method private restartPhone()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 181
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 182
    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 183
    const v1, 0x7f05007c

    .line 184
    new-instance v2, Lcom/m0narx/tweaks/settings$5;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/settings$5;-><init>(Lcom/m0narx/tweaks/settings;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 196
    const v1, 0x7f05002e

    .line 197
    new-instance v2, Lcom/m0narx/tweaks/settings$6;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/settings$6;-><init>(Lcom/m0narx/tweaks/settings;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 208
    return-void
.end method

.method private restoreProfile(Ljava/lang/Integer;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    .line 169
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    .line 170
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    sget v2, Lcom/htc/app/HtcProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v1, p0, Lcom/m0narx/tweaks/settings;->pDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 173
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    .local v0, RestoreProfile:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 265
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v1, 0x1

    .line 268
    :goto_0
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 300
    .local v1, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;,"Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;"
    iget-object v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/settings$ViewHolder;

    .line 301
    .local v0, ListItem:Lcom/m0narx/tweaks/settings$ViewHolder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 303
    :pswitch_0
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/m0narx/tweaks/settings;->SaveProfile(ZI)V

    move v2, v3

    .line 304
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v2, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/m0narx/tweaks/settings;->removeProfile(I)V

    move v2, v3

    .line 307
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x7f09000f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    .line 73
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->hide()V

    .line 74
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    .line 75
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->inflater:Landroid/view/LayoutInflater;

    .line 76
    new-instance v8, Lcom/m0narx/tweaks/DBProvider;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/DBProvider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/DBProvider;

    .line 77
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->dbh:Lcom/m0narx/tweaks/DBProvider;

    invoke-virtual {v8}, Lcom/m0narx/tweaks/DBProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->setContentView(I)V

    .line 80
    const v8, 0x7f090005

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarText;

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->Title:Lcom/htc/widget/HeaderBarText;

    .line 81
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->Title:Lcom/htc/widget/HeaderBarText;

    const v10, 0x7f0500a9

    invoke-virtual {v8, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 82
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 85
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v8}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 86
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v8, 0x3

    iput v8, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 87
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v8, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const v8, 0x7f090008

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcFooterButton;

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    .line 90
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0500ab

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 92
    const v8, 0x7f090007

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcFooterButton;

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    .line 93
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    const v10, 0x7f0500ad

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 95
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->CancelB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/settings$2;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/settings$2;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->SaveB:Lcom/htc/widget/HtcFooterButton;

    new-instance v10, Lcom/m0narx/tweaks/settings$3;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/settings$3;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v8, 0x7f090001

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListView;

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    .line 116
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcListView;->setAnimationCacheEnabled(Z)V

    .line 117
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcListView;->setDrawingCacheEnabled(Z)V

    .line 118
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcListView;->setSmoothScrollbarEnabled(Z)V

    .line 119
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 121
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    new-instance v10, Lcom/m0narx/tweaks/settings$4;

    invoke-direct {v10, p0}, Lcom/m0narx/tweaks/settings$4;-><init>(Lcom/m0narx/tweaks/settings;)V

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 129
    new-instance v8, Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-direct {v8, p0}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;-><init>(Lcom/m0narx/tweaks/settings;)V

    iput-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    .line 130
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0500b0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Default"

    invoke-virtual {v8, v10, v11}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0500b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Stock"

    invoke-virtual {v8, v10, v11}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 133
    .local v1, assetManager:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    .line 135
    .local v4, files:[Ljava/lang/String;
    :try_start_0
    const-string v8, ""

    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 139
    :goto_0
    array-length v10, v4

    move v8, v9

    :goto_1
    if-lt v8, v10, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/m0narx/tweaks/settings;->LoadData()V

    .line 155
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0, v8}, Lcom/m0narx/tweaks/settings;->registerForContextMenu(Landroid/view/View;)V

    .line 156
    iget-object v8, p0, Lcom/m0narx/tweaks/settings;->ProfileList:Lcom/htc/widget/HtcListView;

    iget-object v9, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/io/IOException;
    const-string v8, "tag"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    aget-object v3, v4, v8

    .line 140
    .local v3, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 141
    .local v5, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 143
    .local v6, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 144
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v6           #out:Ljava/io/OutputStream;
    .local v7, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-direct {p0, v5, v7}, Lcom/m0narx/tweaks/settings;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 147
    const/4 v5, 0x0

    .line 148
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 149
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    const/4 v6, 0x0

    .line 139
    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v9

    goto :goto_2

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v7       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 286
    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 288
    .local v1, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;,"Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090001

    if-ne v2, v3, :cond_0

    .line 289
    iget v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 290
    iget-object v2, p0, Lcom/m0narx/tweaks/settings;->mAdapter:Lcom/m0narx/tweaks/settings$ProfileListAdapter;

    iget v3, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/m0narx/tweaks/settings$ProfileListAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 291
    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 292
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0c

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 218
    sget-object v10, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, XMLProfileFile:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/m0narx/tweaks/settings;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/m0narx/tweaks/settings;->ProfileToRestore:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".csv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, ProfileFile:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 227
    .local v2, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, strLine:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 247
    new-instance v7, Ljava/io/File;

    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->prefXMLFile:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v7, prefFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 249
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v6, newFile:Ljava/io/File;
    :try_start_1
    invoke-static {v6, v7}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .end local v0           #ProfileFile:Ljava/lang/String;
    .end local v1           #XMLProfileFile:Ljava/lang/String;
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #newFile:Ljava/io/File;
    .end local v7           #prefFile:Ljava/io/File;
    .end local v8           #strLine:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/m0narx/tweaks/settings;->restartMain:Z

    .line 257
    const/4 v10, 0x1

    sput-boolean v10, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 258
    const/4 v10, 0x1

    sput-boolean v10, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 259
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :goto_2
    return-void

    .line 228
    .restart local v0       #ProfileFile:Ljava/lang/String;
    .restart local v1       #XMLProfileFile:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v10, "\\|"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, tweak:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 230
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {p0, v10}, Lcom/m0narx/tweaks/settings;->isInteger(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 231
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 243
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v8           #strLine:Ljava/lang/String;
    .end local v9           #tweak:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 233
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v8       #strLine:Ljava/lang/String;
    .restart local v9       #tweak:[Ljava/lang/String;
    :cond_2
    :try_start_3
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 234
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 236
    :cond_3
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 240
    :cond_4
    iget-object v10, p0, Lcom/m0narx/tweaks/settings;->Cr:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 252
    .end local v9           #tweak:[Ljava/lang/String;
    .restart local v6       #newFile:Ljava/io/File;
    .restart local v7       #prefFile:Ljava/io/File;
    :catch_1
    move-exception v10

    goto :goto_1
.end method
