.class Lcom/htc/cs/activity/accountactivities/CSForgotPassword;
.super Landroid/text/style/ClickableSpan;
.source "CSForgotPassword.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 11
    const-string v0, "[CSForgotPassword] "

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSForgotPassword;->TAG:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSForgotPassword;->mListener:Landroid/view/View$OnClickListener;

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSForgotPassword;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 24
    return-void
.end method
