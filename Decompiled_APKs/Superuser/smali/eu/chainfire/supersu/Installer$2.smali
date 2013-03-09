.class Leu/chainfire/supersu/Installer$2;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/Installer;

.field private b:Landroid/app/ProgressDialog;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Leu/chainfire/supersu/Installer$UninstallMode;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/Installer$2;->a:Leu/chainfire/supersu/Installer;

    iput-object p2, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/supersu/Installer$2;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 3

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->a:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    iget-object v2, p0, Leu/chainfire/supersu/Installer$2;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/supersu/Installer$2;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/supersu/Installer$2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/Installer$2;->b:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
