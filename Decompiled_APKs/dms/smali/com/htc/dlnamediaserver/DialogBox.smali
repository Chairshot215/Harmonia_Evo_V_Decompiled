.class public Lcom/htc/dlnamediaserver/DialogBox;
.super Ljava/lang/Object;
.source "DialogBox.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public OK(II)V
    .locals 3
    .parameter "aTitle"
    .parameter "aMessage"

    .prologue
    const/4 v2, 0x1

    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, theDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 25
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 28
    const-string v1, "OK"

    new-instance v2, Lcom/htc/dlnamediaserver/DialogBox$1;

    invoke-direct {v2, p0}, Lcom/htc/dlnamediaserver/DialogBox$1;-><init>(Lcom/htc/dlnamediaserver/DialogBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 37
    return-void
.end method

.method public OKExit(II)V
    .locals 3
    .parameter "aTitle"
    .parameter "aMessage"

    .prologue
    const/4 v2, 0x1

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, theDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 45
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 48
    const-string v1, "OK"

    new-instance v2, Lcom/htc/dlnamediaserver/DialogBox$2;

    invoke-direct {v2, p0}, Lcom/htc/dlnamediaserver/DialogBox$2;-><init>(Lcom/htc/dlnamediaserver/DialogBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 57
    return-void
.end method
