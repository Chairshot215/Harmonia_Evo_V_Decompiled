.class public final Lcom/coremobility/app/vnotes/hp;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/content/Context;

.field private c:Lcom/coremobility/app/vnotes/hs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hp;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move v0, v4

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preference_recent_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not create CM_VnoteRecipient from address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/coremobility/app/vnotes/hs;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    const v3, 0x7f030043

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/app/vnotes/hs;-><init>(Landroid/content/Context;Ljava/util/Vector;IZZ)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/hp;->c:Lcom/coremobility/app/vnotes/hs;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/coremobility/app/vnotes/hr;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preference_recent_list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->c:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hs;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " ()-+"

    invoke-static {p1, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/coremobility/j/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/hp;->a()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/hp;->a()V

    goto :goto_2

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method public final b()Lcom/coremobility/app/vnotes/hs;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->c:Lcom/coremobility/app/vnotes/hs;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hp;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not update CM_VnoteRecipient from address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method
