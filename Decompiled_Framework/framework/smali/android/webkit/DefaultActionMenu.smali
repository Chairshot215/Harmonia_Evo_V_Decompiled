.class Landroid/webkit/DefaultActionMenu;
.super Ljava/lang/Object;
.source "DefaultActionMenu.java"

# interfaces
.implements Lcom/htc/textselection/ActionMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/DefaultActionMenu$DefaultAction;
    }
.end annotation


# instance fields
.field allActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;
    .locals 2

    new-instance v0, Landroid/webkit/DefaultActionMenu$DefaultAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/DefaultActionMenu$DefaultAction;-><init>(Landroid/webkit/DefaultActionMenu;II)V

    invoke-interface {v0, p4}, Lcom/htc/textselection/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, p3}, Lcom/htc/textselection/Action;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method clearMenu()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public getAction(II)Lcom/htc/textselection/Action;
    .locals 4

    iget-object v3, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method getActions()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/textselection/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    return-object v0
.end method

.method public removeAction(II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/DefaultActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setGroupVisibility(IZ)V
    .locals 3

    iget-object v2, p0, Landroid/webkit/DefaultActionMenu;->allActions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getGroupID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0, p2}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
