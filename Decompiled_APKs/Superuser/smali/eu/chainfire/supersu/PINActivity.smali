.class public Leu/chainfire/supersu/PINActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->b:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->c:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->d:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->e:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->f:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->g:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->h:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->i:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->j:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->k:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->l:Landroid/widget/TextView;

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->m:Landroid/widget/TextView;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    iput-boolean v2, p0, Leu/chainfire/supersu/PINActivity;->o:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->q:Z

    iput-object v1, p0, Leu/chainfire/supersu/PINActivity;->r:Ljava/lang/String;

    iput v2, p0, Leu/chainfire/supersu/PINActivity;->s:I

    iput-boolean v2, p0, Leu/chainfire/supersu/PINActivity;->t:Z

    iput-boolean v2, p0, Leu/chainfire/supersu/PINActivity;->u:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    const-string v0, ""

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/.pin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x20

    :try_start_1
    new-array v3, v1, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eu.chainfire.supersu.pin.status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v3, :cond_1

    const-string v1, "eu.chainfire.supersu.pin.code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-boolean v1, p0, Leu/chainfire/supersu/PINActivity;->q:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Leu/chainfire/supersu/PINActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v1, Leu/chainfire/supersu/Settings;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Leu/chainfire/supersu/PINActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v2

    invoke-static {p0, v0}, Leu/chainfire/supersu/PINActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->t:Z

    if-nez v0, :cond_3

    iput v3, v2, Leu/chainfire/supersu/Settings$App;->i:I

    :goto_1
    invoke-virtual {v2}, Leu/chainfire/supersu/Settings$App;->e()V

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    iget v0, p0, Leu/chainfire/supersu/PINActivity;->s:I

    invoke-virtual {v2, v0, v3}, Leu/chainfire/supersu/Settings$App;->a(II)V

    :goto_2
    iget v0, p0, Leu/chainfire/supersu/PINActivity;->s:I

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->a(I)V

    invoke-static {p0}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    goto :goto_0

    :cond_3
    iput v4, v2, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_1

    :cond_4
    iput v4, v2, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v2}, Leu/chainfire/supersu/Settings$App;->e()V

    invoke-virtual {v1, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    iget v0, p0, Leu/chainfire/supersu/PINActivity;->s:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Leu/chainfire/supersu/Settings$App;->a(II)V

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4085

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.forresult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.responsecode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.appname"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.askagain"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v1, 0x3

    invoke-static {p0, p1}, Leu/chainfire/supersu/PINActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0043

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    new-instance v2, Leu/chainfire/supersu/PINActivity$1;

    invoke-direct {v2, p3}, Leu/chainfire/supersu/PINActivity$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/PINActivity$2;

    invoke-direct {v1, p3}, Leu/chainfire/supersu/PINActivity$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;ZIZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4085

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.forresult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.closeonclear"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.pin.isverify"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    const-string v2, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "eu.chainfire.supersu.pin.status"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    const-string v2, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v2}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->setContentView(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.forresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->q:Z

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->q:Z

    if-nez v0, :cond_5

    iput-boolean v2, p0, Leu/chainfire/supersu/PINActivity;->o:Z

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.responsecode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PINActivity;->s:I

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.askagain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->t:Z

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_2
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->m:Landroid/widget/TextView;

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    new-instance v0, Leu/chainfire/supersu/PINActivity$3;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PINActivity$3;-><init>(Leu/chainfire/supersu/PINActivity;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->q:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Leu/chainfire/supersu/PINActivity;->a(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PINActivity;->onPIN(Landroid/view/View;)V

    return-void

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.closeonclear"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->o:Z

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.isverify"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->u:Z

    goto/16 :goto_0
.end method

.method public onPIN(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "2"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "3"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->j:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->k:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "7"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->l:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "8"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->m:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "9"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->o:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Leu/chainfire/supersu/PINActivity;->a(ILjava/lang/String;)V

    iput-boolean v4, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    :cond_a
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->u:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    const v2, 0x7f090061

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    const-string v2, "eu.chainfire.supersu.pin.code"

    iget-object v3, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Leu/chainfire/supersu/PINActivity;->a(ILjava/lang/String;)V

    iput-boolean v4, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    const v2, 0x7f09005f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_d
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Leu/chainfire/supersu/PINActivity;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_e

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->v:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->a(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->p:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    return-void
.end method
