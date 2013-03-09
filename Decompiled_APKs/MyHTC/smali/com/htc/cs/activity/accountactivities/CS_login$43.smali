.class Lcom/htc/cs/activity/accountactivities/CS_login$43;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 3540
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$43;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$43;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$4200(Lcom/htc/cs/activity/accountactivities/CS_login;ZZ)V

    .line 3545
    return-void
.end method
