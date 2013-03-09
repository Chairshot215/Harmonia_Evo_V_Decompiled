.class public Lcom/htc/ml/PhotoLockScreen/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;
    }
.end annotation


# static fields
.field private static final ACTION_FOLDER_PICKER:Ljava/lang/String; = "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

.field private static final ACTIVITY_REQ_FOLDER:I = 0x2

.field private static final CLOSE:I = 0x1

.field public static final DBAVAILABLE:Ljava/lang/String; = "DB_AVAILABLE"

.field public static final DBDONE:Ljava/lang/String; = "DB_DONE"

.field private static final FAILCLOSE:I = 0x3

.field public static final SHARED_NAME:Ljava/lang/String; = "PhotoLockScreen_Shared"

.field private static final SHOWDIALOG:I = 0x2

.field public static arrListMediaStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/MediaStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private dialog:Lcom/htc/dialog/HtcAlertDialog;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;

    invoke-direct {v0, p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;-><init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)V

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/ml/PhotoLockScreen/SettingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setIsDBDone(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/ml/PhotoLockScreen/SettingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setIsDBAvailable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity$1;-><init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 144
    return-void
.end method

.method private getIsDBAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v1, "PhotoLockScreen_Shared"

    invoke-virtual {p0, v1, v2}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, prefer:Landroid/content/SharedPreferences;
    const-string v1, "DB_AVAILABLE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private runInNonUI(ILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "data"

    .prologue
    .line 148
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/htc/ml/PhotoLockScreen/SettingActivity$2;-><init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;Landroid/content/Intent;)V

    .line 188
    .local v0, backThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method private setIsDBAvailable(Z)V
    .locals 4
    .parameter "bAvailable"

    .prologue
    .line 109
    const-string v2, "PhotoLockScreen_Shared"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DB_AVAILABLE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method private setIsDBDone(I)V
    .locals 4
    .parameter "done"

    .prologue
    .line 123
    const-string v2, "PhotoLockScreen_Shared"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, prefer:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DB_DONE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method private startFolerPicker()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 194
    if-nez p3, :cond_0

    .line 195
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "onActivityResult - data == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->runInNonUI(ILandroid/content/Intent;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 30
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "is_apply"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 31
    .local v0, bIsApply:Z
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->createDialog()V

    .line 32
    if-eqz v0, :cond_2

    .line 35
    sget-object v2, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->arrListMediaStore:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0, v4}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setResult(I)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->getIsDBAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p0, v4}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->startFolerPicker()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->startFolerPicker()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 62
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "SettingActivity - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
