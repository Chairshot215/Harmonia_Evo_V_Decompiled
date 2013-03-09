.class public Leu/chainfire/supersu/Settings$App;
.super Leu/chainfire/supersu/Settings$Default;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/util/ArrayList;

.field final synthetic f:Leu/chainfire/supersu/Settings;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-direct {p0, p1}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->a:Z

    iput-object v1, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/supersu/Settings$App;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/supersu/Settings$App;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/Settings$App;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/Settings$App;)Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->k:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->m:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/Settings$App;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public final a(II)V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v6, :cond_1

    const-string v0, ""

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_0
    const-string v3, "%d:%d:%s:%s:%s"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->h:I

    if-ltz v1, :cond_4

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->h:I

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->d:I

    if-ltz v1, :cond_5

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v4, v7

    aput-object v0, v4, v8

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    :goto_3
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "mkdir %s"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "chmod 600 %s"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "echo \'%s\' > %s%d"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v0, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "chmod 600 %s%d"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->a([Ljava/lang/String;)Ljava/util/List;

    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-virtual {v1}, Leu/chainfire/supersu/Settings;->a()Leu/chainfire/supersu/Settings$Default;

    move-result-object v1

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->h:I

    goto/16 :goto_1

    :cond_5
    const-string v1, ""

    goto/16 :goto_2

    :cond_6
    const-string v0, ""

    goto/16 :goto_3
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Leu/chainfire/supersu/Settings$App;->k:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput v5, p0, Leu/chainfire/supersu/Settings$App;->g:I

    iput v5, p0, Leu/chainfire/supersu/Settings$App;->h:I

    invoke-super {p0, p1}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "config_%s_forceshell"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "config_%s_forceuser"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Leu/chainfire/supersu/Settings$App;->d:I

    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "config_%s_forcegroups"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    :try_start_0
    iget-object v4, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "config_%s_forceshell"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v0, "config_%s_forceuser"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leu/chainfire/supersu/Settings$App;->d:I

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, ""

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_1
    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_0
    const-string v1, "config_%s_forcegroups"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_1
    const-string v0, "config_%s_forceshell"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/Settings$App;->a()V

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Leu/chainfire/supersu/Settings$App;->a()V

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings$App;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/supersu/Settings$App;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Leu/chainfire/supersu/Settings$App;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Leu/chainfire/supersu/Settings$App;->k:Z

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_notify"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_log"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_access"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_forceshell"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_forceuser"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_forcegroups"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Leu/chainfire/supersu/Settings$App;->f:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->c(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
