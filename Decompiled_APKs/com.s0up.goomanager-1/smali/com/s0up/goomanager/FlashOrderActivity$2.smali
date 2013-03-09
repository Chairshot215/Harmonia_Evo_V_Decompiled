.class Lcom/s0up/goomanager/FlashOrderActivity$2;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FlashOrderActivity;->prepareFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashOrderActivity;

.field private final synthetic val$createBackup:Z

.field private final synthetic val$finalZip:[Ljava/lang/String;

.field private final synthetic val$wipeCache:Z

.field private final synthetic val$wipeData:Z


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity;[Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    iput-object p2, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$finalZip:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$wipeCache:Z

    iput-boolean p4, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$wipeData:Z

    iput-boolean p5, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$createBackup:Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    packed-switch p2, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    const-string v2, "Preparing to Flash"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    new-instance v0, Lcom/s0up/goomanager/ExtendedCommandBuilder;

    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-direct {v0, v1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$finalZip:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$wipeCache:Z

    iget-boolean v3, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$wipeData:Z

    iget-boolean v4, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->val$createBackup:Z

    iget-object v5, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-virtual {v5}, Lcom/s0up/goomanager/FlashOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->flashRom([Ljava/lang/String;ZZZLandroid/content/Context;)V

    goto :goto_0

    .line 194
    .end local v0           #ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;
    :pswitch_1
    iget-object v1, p0, Lcom/s0up/goomanager/FlashOrderActivity$2;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashOrderActivity;->finish()V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
