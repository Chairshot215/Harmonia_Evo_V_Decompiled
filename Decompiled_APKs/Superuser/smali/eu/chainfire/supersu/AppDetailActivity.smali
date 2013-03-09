.class public Leu/chainfire/supersu/AppDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Leu/chainfire/supersu/Settings;

.field private d:Leu/chainfire/supersu/Settings$App;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Spinner;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1100

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, 0x1090009

    const v5, 0x1090008

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setContentView(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0, v2}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    const-string v0, ""

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_0
    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    const v0, 0x7f0b0004

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->i:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    const v0, 0x7f0b0006

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->g:I

    packed-switch v0, :pswitch_data_1

    :goto_3
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0b0005

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->h:I

    packed-switch v0, :pswitch_data_2

    :goto_4
    if-eqz v1, :cond_4

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Leu/chainfire/supersu/AppDetailActivity$1;

    invoke-direct {v1, p0, p0}, Leu/chainfire/supersu/AppDetailActivity$1;-><init>(Leu/chainfire/supersu/AppDetailActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_6
    :goto_5
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_b

    sget-object v0, Leu/chainfire/supersu/Constants;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move v0, v2

    :goto_6
    sget-object v3, Leu/chainfire/supersu/Constants;->a:[I

    array-length v3, v3

    if-lt v2, v3, :cond_9

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :cond_7
    :goto_7
    move-object v1, v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :cond_8
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Leu/chainfire/supersu/Constants;->a:[I

    aget v4, v4, v2

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Leu/chainfire/supersu/Constants;->a:[I

    aget v3, v3, v2

    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v4, v4, Leu/chainfire/supersu/Settings$App;->d:I

    if-ne v3, v4, :cond_a

    add-int/lit8 v0, v2, 0x1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public onForget(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onSave(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :goto_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    :cond_0
    :goto_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_2

    :pswitch_9
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    sget-object v1, Leu/chainfire/supersu/Constants;->a:[I

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method
