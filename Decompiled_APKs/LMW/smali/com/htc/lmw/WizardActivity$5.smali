.class Lcom/htc/lmw/WizardActivity$5;
.super Ljava/lang/Object;
.source "WizardActivity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/WizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/WizardActivity;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$params:Ljava/util/List;

.field final synthetic val$upperView:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/lmw/WizardActivity;Ljava/util/List;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/lmw/WizardActivity$5;->this$0:Lcom/htc/lmw/WizardActivity;

    iput-object p2, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/lmw/WizardActivity$5;->val$upperView:Ljava/util/List;

    iput-object p4, p0, Lcom/htc/lmw/WizardActivity$5;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, id:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 207
    invoke-interface {p3, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "duplicate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    invoke-interface {p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 217
    if-eqz v2, :cond_2

    const-string v4, "deactivator"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$upperView:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 222
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$upperView:Ljava/util/List;

    invoke-interface {v4, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    .line 262
    :goto_1
    return-object v3

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    :try_start_0
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$inflater:Landroid/view/LayoutInflater;

    const-string v6, ""

    invoke-virtual {v4, p1, v6, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 233
    .local v3, view:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 234
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$upperView:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    .end local v3           #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 238
    goto :goto_1

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$inflater:Landroid/view/LayoutInflater;

    const-string v6, ""

    invoke-virtual {v4, p1, v6, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 244
    .restart local v3       #view:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 246
    .end local v3           #view:Landroid/view/View;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 248
    goto :goto_1

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v2, :cond_5

    .line 255
    const-string v4, "activator"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 257
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v4, p0, Lcom/htc/lmw/WizardActivity$5;->val$params:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v3, v5

    .line 262
    goto :goto_1
.end method
