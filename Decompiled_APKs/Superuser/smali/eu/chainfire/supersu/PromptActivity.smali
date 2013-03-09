.class public Leu/chainfire/supersu/PromptActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/Timer;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Leu/chainfire/supersu/Settings;

.field private m:Leu/chainfire/supersu/Settings$App;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/widget/TextView;

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    iput v1, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    iput v1, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    iput v3, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    iput v3, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->l:Leu/chainfire/supersu/Settings;

    iput-object v2, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->p:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->s:Landroid/os/Handler;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-boolean v2, p0, Leu/chainfire/supersu/PromptActivity;->p:Z

    if-nez v2, :cond_2

    const/4 v2, 0x2

    :try_start_0
    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    if-nez v3, :cond_3

    move v0, v1

    :cond_1
    :goto_0
    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iput v0, v2, Leu/chainfire/supersu/Settings$App;->i:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget v2, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Leu/chainfire/supersu/Settings$App;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->a(I)V

    :cond_2
    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->p:Z

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    invoke-static {p0}, Leu/chainfire/supersu/PromptQueue;->a(Landroid/content/Context;)Z

    return-void

    :cond_3
    :try_start_1
    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    if-eqz v3, :cond_1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget v2, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Leu/chainfire/supersu/Settings$App;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eu.chainfire.supersu.PromptActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x4084

    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_0

    const/high16 v0, 0x5084

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.code"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.appname"

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.pkgname"

    if-eqz p3, :cond_2

    :goto_1
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.from_uid"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.to_uid"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.extra.command"

    if-eqz p6, :cond_3

    :goto_2
    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string p2, ""

    goto :goto_0

    :cond_2
    const-string p3, ""

    goto :goto_1

    :cond_3
    const-string p6, ""

    goto :goto_2
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/PromptActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/PromptActivity;)Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    return v0
.end method

.method static synthetic c(Leu/chainfire/supersu/PromptActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    return v0
.end method

.method static synthetic d(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic e(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Leu/chainfire/supersu/PromptActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    return-void
.end method

.method static synthetic g(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    return-object v0
.end method

.method static synthetic h(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Leu/chainfire/supersu/PromptActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->p:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget-boolean v1, v1, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    :cond_0
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :goto_1
    const v3, 0x7f04003f

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f040040

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v2, -0x1

    const/16 v11, 0xa

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6, v6}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->setContentView(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.code"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.from_uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.to_uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.saved_counter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    goto :goto_0

    :cond_8
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040043

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f040044

    invoke-virtual {p0, v2}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f040045

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f040046

    invoke-virtual {p0, v4}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    const v4, 0x7f040041

    invoke-virtual {p0, v4}, Leu/chainfire/supersu/PromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/widget/TextView;

    const-string v4, "%s (%d)"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    aput-object v9, v8, v6

    iget v9, p0, Leu/chainfire/supersu/PromptActivity;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s (%d)"

    new-array v4, v10, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    :goto_1
    aput-object v0, v4, v6

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->l:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->l:Leu/chainfire/supersu/Settings;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->g:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->i:I

    if-ne v0, v10, :cond_d

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v0, :cond_d

    move v0, v5

    :goto_3
    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v11, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    if-lez v7, :cond_e

    iput v7, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    :cond_9
    :goto_4
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    if-lez v0, :cond_a

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->c:Landroid/widget/TextView;

    iget v1, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    new-instance v1, Leu/chainfire/supersu/PromptActivity$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/PromptActivity$1;-><init>(Leu/chainfire/supersu/PromptActivity;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f09001e

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->h:Ljava/lang/String;

    goto :goto_2

    :cond_d
    move v0, v6

    goto :goto_3

    :cond_e
    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    if-lez v0, :cond_9

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Leu/chainfire/supersu/PromptActivity;->e:I

    goto :goto_4
.end method

.method public onDeny(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    return-void
.end method

.method public onGrant(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->q:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->d:Ljava/util/Timer;

    iget v0, p0, Leu/chainfire/supersu/PromptActivity;->f:I

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Leu/chainfire/supersu/PINActivity;->a(Landroid/app/Activity;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PromptActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Leu/chainfire/supersu/PromptActivity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->r:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->t:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PromptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "SuperSU Prompt Wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->q:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->n:Z

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity;->m:Leu/chainfire/supersu/Settings$App;

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PromptActivity;->o:Z

    :cond_1
    invoke-direct {p0}, Leu/chainfire/supersu/PromptActivity;->a()V

    goto :goto_0
.end method
