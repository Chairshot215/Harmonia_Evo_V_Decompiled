.class Lcom/s0up/goomanager/FlashOrderActivity$1;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashOrderActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const-string v2, "Name your backup"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    const-string v2, "If you would like your backup to be called something else, enter it here."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 70
    const-string v2, "Ok"

    new-instance v3, Lcom/s0up/goomanager/FlashOrderActivity$1$1;

    invoke-direct {v3, p0, v1}, Lcom/s0up/goomanager/FlashOrderActivity$1$1;-><init>(Lcom/s0up/goomanager/FlashOrderActivity$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    const-string v2, "Cancel"

    new-instance v3, Lcom/s0up/goomanager/FlashOrderActivity$1$2;

    invoke-direct {v3, p0}, Lcom/s0up/goomanager/FlashOrderActivity$1$2;-><init>(Lcom/s0up/goomanager/FlashOrderActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 108
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #input:Landroid/widget/EditText;
    :cond_0
    return-void
.end method
