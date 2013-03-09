.class public Lcom/android/smith/MainActivity;
.super Landroid/app/ListActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/MainActivity$InitThread;,
        Lcom/android/smith/MainActivity$TestItemListAdapter;
    }
.end annotation


# static fields
.field private static final MSG_INIT_TIMEOUT:I = 0x2

.field private static final MSG_SHOW_INFO:I = 0x1

.field public static final SMITH_CATEGORY:Ljava/lang/String; = "com.android.category.SMITH"

.field private static final SMITH_INFO_FILE:Ljava/lang/String; = "/data/data/com.android.smith/data/.category"

.field public static final SMITH_TEST_CATEGORY:Ljava/lang/String; = "com.android.category.SMITH_TEST"

.field private static final TAG:Ljava/lang/String; = "SM:Main"


# instance fields
.field private mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

.field private mCategory:Ljava/lang/String;

.field private mClickFinish:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitThread:Lcom/android/smith/MainActivity$InitThread;

.field private mTitle:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    .line 81
    iput-object v0, p0, Lcom/android/smith/MainActivity;->mCategory:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    .line 83
    iput-object v0, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    .line 112
    new-instance v0, Lcom/android/smith/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/smith/MainActivity$1;-><init>(Lcom/android/smith/MainActivity;)V

    iput-object v0, p0, Lcom/android/smith/MainActivity;->mClickFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 535
    new-instance v0, Lcom/android/smith/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/smith/MainActivity$2;-><init>(Lcom/android/smith/MainActivity;)V

    iput-object v0, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/smith/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/smith/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/smith/MainActivity;->showVersionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/smith/MainActivity;)Lcom/android/smith/MainActivity$InitThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/smith/MainActivity;Lcom/android/smith/MainActivity$InitThread;)Lcom/android/smith/MainActivity$InitThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    return-object p1
.end method

.method private changeCategory(Ljava/lang/String;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/smith/MainActivity;->mCategory:Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/android/smith/MainActivity$TestItemListAdapter;

    invoke-direct {p0}, Lcom/android/smith/MainActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/smith/MainActivity$TestItemListAdapter;-><init>(Lcom/android/smith/MainActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    .line 330
    iget-object v0, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/smith/MainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    const-string v1, "Smith"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-direct {p0}, Lcom/android/smith/MainActivity;->checkSu()V

    .line 334
    const-string v0, "/data/data/com.android.smith/data/.category"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private checkSu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 87
    new-instance v1, Lcom/android/smith/infoclaz/FileStat;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Lcom/android/smith/infoclaz/FileStat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, fs:Lcom/android/smith/infoclaz/FileStat;
    invoke-static {v1}, Lcom/android/smith/HtcNative;->getFileStat(Lcom/android/smith/infoclaz/FileStat;)I

    move-result v2

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/android/smith/infoclaz/FileStat;->mUid:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/smith/infoclaz/FileStat;->mGid:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/smith/infoclaz/FileStat;->mSize:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/smith/infoclaz/FileStat;->mMode:I

    const v3, 0x8ded

    if-eq v2, v3, :cond_2

    .line 91
    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/android/smith/Device;->mSuStatus:I

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    sput v4, Lcom/android/smith/Device;->mSuStatus:I

    .line 99
    :try_start_0
    const-string v2, "/system/xbin/su 0 /dev/null"

    invoke-static {v2}, Lcom/android/smith/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 101
    .local v0, code:I
    if-ne v0, v4, :cond_1

    .line 103
    const/4 v2, 0x2

    sput v2, Lcom/android/smith/Device;->mSuStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0           #code:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getCategoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 70
    const-string v0, "com.android.category.SMITH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "All Tools"

    .line 72
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v0, "com.android.category.SMITH_TEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Internal"

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/smith/MainActivity;->mCategory:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 317
    const-string v1, "com.android.category.SMITH"

    iput-object v1, p0, Lcom/android/smith/MainActivity;->mCategory:Ljava/lang/String;

    .line 320
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, targetIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/smith/MainActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 323
    return-object v0
.end method

.method private showVersionDialog()V
    .locals 4

    .prologue
    const v3, 0x7f040004

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Server Version [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/ClientLocalSocket;->getServerVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] req [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Library Version [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/HtcNative;->getLibVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] req [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, msg:Ljava/lang/String;
    const-string v1, "never"

    invoke-virtual {p0, v3}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Expire Date [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "viewObject"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/high16 v10, 0x7f04

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {v8}, Lcom/android/smith/HtcNative;->dummy(Z)V

    .line 141
    const-string v5, "/proc/uptime"

    invoke-static {v5, v8}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, uptime:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 145
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 147
    .local v2, i:I
    if-lez v2, :cond_0

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 154
    .end local v2           #i:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/smith/BootCompleteReceiver;->isBootCompleted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, bootcomplete:Z
    const/4 v3, 0x0

    .line 159
    .local v3, sec:I
    const-string v5, "SM:Main"

    const-string v6, "not yet boot completed ..."

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 170
    :goto_1
    const-string v5, "SM:Main"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " secs."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 v5, 0xb4

    if-le v3, v5, :cond_1

    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-static {v9}, Lcom/android/smith/BootCompleteReceiver;->setBootCompleted(Z)V

    .line 178
    :cond_1
    if-nez v0, :cond_3

    .line 180
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v10}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Device is booting, please wait ...\n\nClick button to close."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f040036

    iget-object v7, p0, Lcom/android/smith/MainActivity;->mClickFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 269
    .end local v0           #bootcomplete:Z
    .end local v3           #sec:I
    :goto_2
    return-void

    .line 151
    :cond_2
    const-string v4, "0"

    goto :goto_0

    .line 165
    .restart local v0       #bootcomplete:Z
    .restart local v3       #sec:I
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1

    .line 194
    .end local v0           #bootcomplete:Z
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #sec:I
    :cond_3
    const v5, 0x7f030003

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->setContentView(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    const v5, 0x7f05002e

    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    .line 205
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    if-nez v5, :cond_4

    .line 207
    const-string v5, "SM:Main"

    const-string v6, "cannot find button by resource id!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->finish()V

    goto :goto_2

    .line 196
    :catch_1
    move-exception v1

    .line 198
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "SM:Main"

    const-string v6, "failed to load layout!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->finish()V

    goto :goto_2

    .line 212
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const v5, 0x7f040004

    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/smith/Version;->setExpireDate(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/android/smith/Version;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 216
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    const-string v6, "Smith - expired!"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const-string v5, "SM:Main"

    iget-object v6, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_3
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-direct {p0}, Lcom/android/smith/MainActivity;->checkSu()V

    .line 253
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 256
    invoke-virtual {p0, v10}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040001

    invoke-virtual {p0, v6}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    const-string v5, "SM:Main"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need lib="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f040002

    invoke-virtual {p0, v7}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {p0, v7}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    if-nez v5, :cond_5

    .line 263
    new-instance v5, Lcom/android/smith/MainActivity$InitThread;

    const-string v6, "init"

    invoke-direct {v5, p0, p0, v6}, Lcom/android/smith/MainActivity$InitThread;-><init>(Lcom/android/smith/MainActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    .line 264
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mInitThread:Lcom/android/smith/MainActivity$InitThread;

    invoke-virtual {v5}, Lcom/android/smith/MainActivity$InitThread;->start()V

    .line 268
    :cond_5
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/smith/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 222
    :cond_6
    const v5, 0x7f040005

    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/smith/Version;->isHardwareSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 224
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    const-string v6, "Smith - not supported!"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string v5, "SM:Main"

    iget-object v6, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 232
    :cond_7
    :try_start_2
    new-instance v5, Lcom/android/smith/MainActivity$TestItemListAdapter;

    invoke-direct {p0}, Lcom/android/smith/MainActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, p0, p0, v6}, Lcom/android/smith/MainActivity$TestItemListAdapter;-><init>(Lcom/android/smith/MainActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v5, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    .line 233
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    invoke-virtual {p0, v5}, Lcom/android/smith/MainActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 244
    iget-object v5, p0, Lcom/android/smith/MainActivity;->mTitle:Landroid/widget/Button;

    const-string v6, "Smith"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 236
    :catch_2
    move-exception v1

    .line 238
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "SM:Main"

    const-string v6, "failed to get item list!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/smith/MainActivity;->finish()V

    goto/16 :goto_2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/smith/MainActivity;->mAdapter:Lcom/android/smith/MainActivity$TestItemListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/smith/MainActivity$TestItemListAdapter;->intentAtPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 303
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/smith/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 127
    invoke-static {}, Lcom/android/smith/Device;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/android/smith/Device;->showUsbDebuggingWarning(Landroid/content/Context;)V

    .line 131
    :cond_0
    return-void
.end method
