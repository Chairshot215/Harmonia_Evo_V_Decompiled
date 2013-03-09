.class Leu/chainfire/supersu/MainActivity$2;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/MainActivity;

.field private b:Leu/chainfire/supersu/Installer;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$2;->a:Leu/chainfire/supersu/MainActivity;

    iput-object p2, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/MainActivity$2;)Leu/chainfire/supersu/Installer;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    return-object v0
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iput-object v2, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Leu/chainfire/supersu/MainActivity$2;)Leu/chainfire/supersu/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->a:Leu/chainfire/supersu/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/supersu/MainActivity$2;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/16 v1, 0xb

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000b

    new-instance v2, Leu/chainfire/supersu/MainActivity$2$1;

    iget-object v3, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Leu/chainfire/supersu/MainActivity$2$1;-><init>(Leu/chainfire/supersu/MainActivity$2;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090005

    new-instance v2, Leu/chainfire/supersu/MainActivity$2$2;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$2$2;-><init>(Leu/chainfire/supersu/MainActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$2$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$2$3;-><init>(Leu/chainfire/supersu/MainActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->b:Leu/chainfire/supersu/Installer;

    invoke-virtual {v0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    const v2, 0x7f0a0043

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_2
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/MainActivity$2$4;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/MainActivity$2$4;-><init>(Leu/chainfire/supersu/MainActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/MainActivity$2$5;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/MainActivity$2$5;-><init>(Leu/chainfire/supersu/MainActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/supersu/MainActivity$2;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$2;->a:Leu/chainfire/supersu/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/supersu/MainActivity;->a(Leu/chainfire/supersu/MainActivity;Z)V

    return-void
.end method
