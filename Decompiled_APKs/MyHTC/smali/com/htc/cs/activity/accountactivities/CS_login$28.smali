.class Lcom/htc/cs/activity/accountactivities/CS_login$28;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 3371
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$28;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$28;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 3375
    return-void
.end method
