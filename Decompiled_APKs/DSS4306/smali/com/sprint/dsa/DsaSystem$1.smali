.class Lcom/sprint/dsa/DsaSystem$1;
.super Landroid/content/BroadcastReceiver;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/DsaSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field resultCode:I

.field final synthetic this$0:Lcom/sprint/dsa/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaSystem;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem$1;->this$0:Lcom/sprint/dsa/DsaSystem;

    .line 701
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 702
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/dsa/DsaSystem$1;->resultCode:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 707
    const-string v0, "SmsError"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/DsaSystem$1;->resultCode:I

    .line 711
    :cond_0
    iget v0, p0, Lcom/sprint/dsa/DsaSystem$1;->resultCode:I

    packed-switch v0, :pswitch_data_0

    .line 726
    :pswitch_0
    return-void

    .line 711
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
