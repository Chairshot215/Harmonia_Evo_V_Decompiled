.class Lcom/htc/socialnetwork/account/BaseLoginActivity$13;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$13;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 545
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$13;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
