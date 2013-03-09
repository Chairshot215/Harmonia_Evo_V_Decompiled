.class Lcom/s0up/goomanager/FlashOrderActivity$1$2;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$2;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$2;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;

    move-result-object v0

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity;->access$3(Lcom/s0up/goomanager/FlashOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const-string v1, "Create backup"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v0

    const-string v1, "backupName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
