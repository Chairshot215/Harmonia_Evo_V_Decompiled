.class Lcom/htc/launcher/GeneralPurposeReceiver$1;
.super Ljava/lang/Thread;
.source "GeneralPurposeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/GeneralPurposeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/GeneralPurposeReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/launcher/GeneralPurposeReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->this$0:Lcom/htc/launcher/GeneralPurposeReceiver;

    iput-object p2, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->this$0:Lcom/htc/launcher/GeneralPurposeReceiver;

    iget-object v1, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/launcher/GeneralPurposeReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/htc/launcher/GeneralPurposeReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/htc/launcher/GeneralPurposeReceiver;->access$000(Lcom/htc/launcher/GeneralPurposeReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    return-void
.end method
