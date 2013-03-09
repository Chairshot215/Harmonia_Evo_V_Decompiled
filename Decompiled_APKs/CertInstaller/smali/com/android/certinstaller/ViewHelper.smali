.class Lcom/android/certinstaller/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getText(I)Ljava/lang/String;
    .locals 1
    .parameter "viewId"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setText(II)V
    .locals 2
    .parameter "viewId"
    .parameter "textId"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    :cond_0
    return-void
.end method

.method setText(ILjava/lang/String;)V
    .locals 2
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 43
    if-nez p2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    .line 30
    return-void
.end method

.method showError(I)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/certinstaller/ViewHelper;->mView:Landroid/view/View;

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, v:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_0
    return-void
.end method
