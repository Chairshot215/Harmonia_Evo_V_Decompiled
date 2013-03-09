.class Lcom/htc/cs/activity/accountactivities/CS_login$48;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 3598
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$48;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3602
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 3603
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$48;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 3604
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$48;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 3606
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$48;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$4200(Lcom/htc/cs/activity/accountactivities/CS_login;ZZ)V

    .line 3609
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
