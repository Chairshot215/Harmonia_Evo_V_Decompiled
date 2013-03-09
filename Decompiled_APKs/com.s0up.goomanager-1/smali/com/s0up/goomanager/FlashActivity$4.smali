.class Lcom/s0up/goomanager/FlashActivity$4;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashActivity;->confirmDelete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$4;->this$0:Lcom/s0up/goomanager/FlashActivity;

    iput-object p2, p0, Lcom/s0up/goomanager/FlashActivity$4;->val$type:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 349
    packed-switch p2, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$4;->val$type:Ljava/lang/String;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    new-instance v0, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;

    iget-object v1, p0, Lcom/s0up/goomanager/FlashActivity$4;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v0, v1, v5}, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;-><init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$4;->val$type:Ljava/lang/String;

    const-string v1, "SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;

    iget-object v1, p0, Lcom/s0up/goomanager/FlashActivity$4;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v0, v1, v5}, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;-><init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$DeleteSelected;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
