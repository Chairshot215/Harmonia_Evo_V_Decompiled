.class public Leu/chainfire/supersu/Settings$Default;
.super Ljava/lang/Object;


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field final synthetic j:Leu/chainfire/supersu/Settings;


# direct methods
.method public constructor <init>(Leu/chainfire/supersu/Settings;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->h:I

    const/4 v0, 0x2

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->i:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_access"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->i:I

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->i:I

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_notify"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_log"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Leu/chainfire/supersu/Settings$Default;->h:I

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->h:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "config_%s_notify"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "config_%s_access"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->i:I

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "config_%s_notify"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    const-string v0, "config_%s_log"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Leu/chainfire/supersu/Settings$Default;->h:I

    invoke-static {v1}, Leu/chainfire/supersu/Constants;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "config_%s_notify"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Leu/chainfire/supersu/Settings$Default;->g:I

    invoke-static {v3}, Leu/chainfire/supersu/Constants;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public d()V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/Settings$Default;->j:Leu/chainfire/supersu/Settings;

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {p0, v1, v0}, Leu/chainfire/supersu/Settings$Default;->a(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
