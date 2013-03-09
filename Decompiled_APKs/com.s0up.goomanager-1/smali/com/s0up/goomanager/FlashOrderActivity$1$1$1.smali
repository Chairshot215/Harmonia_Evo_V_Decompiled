.class Lcom/s0up/goomanager/FlashOrderActivity$1$1$1;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/s0up/goomanager/FlashOrderActivity$1$1;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1$1;->this$2:Lcom/s0up/goomanager/FlashOrderActivity$1$1;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$1$1$1;->this$2:Lcom/s0up/goomanager/FlashOrderActivity$1$1;

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1$1;->this$1:Lcom/s0up/goomanager/FlashOrderActivity$1;
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity$1$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1$1;)Lcom/s0up/goomanager/FlashOrderActivity$1;

    move-result-object v0

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity$1;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity$1;->access$0(Lcom/s0up/goomanager/FlashOrderActivity$1;)Lcom/s0up/goomanager/FlashOrderActivity;

    move-result-object v0

    #getter for: Lcom/s0up/goomanager/FlashOrderActivity;->mCbBackup:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity;->access$3(Lcom/s0up/goomanager/FlashOrderActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    return-void
.end method
