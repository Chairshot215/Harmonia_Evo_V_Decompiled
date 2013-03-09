.class public Leu/chainfire/supersu/LogDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Leu/chainfire/supersu/Logs;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;)I
    .locals 1

    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return v0
.end method

.method private a()V
    .locals 14

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    const-string v1, "%s @ %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Leu/chainfire/supersu/Logs$Log;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Leu/chainfire/supersu/Logs$Log;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    iget-object v4, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iget-object v4, v4, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f04002f

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x44

    const/16 v5, 0x44

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const-string v4, ".DENIED."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-nez v2, :cond_6

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x44

    const/16 v5, 0x44

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x11170

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    :cond_7
    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, "INTERACTIVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, 0x99

    const/16 v7, 0xcc

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    aput v8, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    aput v8, v5, v7

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x0

    aget v7, v5, v7

    if-ltz v7, :cond_e

    const/4 v7, 0x1

    aget v7, v5, v7

    if-ltz v7, :cond_e

    const/4 v7, 0x0

    aget v7, v6, v7

    if-ltz v7, :cond_e

    const/4 v7, 0x1

    aget v7, v6, v7

    if-ltz v7, :cond_e

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    new-array v9, v8, [B

    invoke-virtual {v4, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_e

    add-int/2addr v2, v8

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v11, v9, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v12, " "

    const-string v13, "\u00a0"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-nez v0, :cond_a

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v9, v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_a

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_a
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/16 v9, 0x99

    const/16 v12, 0xcc

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v3, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-static {v9, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v3, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, 0xff

    const/16 v9, 0x44

    const/16 v12, 0x44

    invoke-static {v8, v9, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {v3, v7, v10, v11, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x4000

    if-lt v2, v7, :cond_9

    :cond_e
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_10
    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    int-to-char v2, v2

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/LogDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x1200

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;I)V
    .locals 0

    iput p1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/LogDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/supersu/LogDetailActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    sget-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-direct {p0}, Leu/chainfire/supersu/LogDetailActivity;->a()V

    return-void
.end method

.method public onNext(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$2;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onPrev(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$1;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "eu.chainfire.supersu.extra.logposition"

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method
