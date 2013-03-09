.class Lcom/htc/cs/activity/accountactivities/CS_login$12;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;->createTermDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 2321
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$12;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$12;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setAgreeTerm(Landroid/content/Context;Z)V

    .line 2327
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$12;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 2328
    return-void
.end method
