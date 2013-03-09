.class Lcom/s0up/goomanager/FileListActivity$2;
.super Ljava/lang/Object;
.source "FileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FileListActivity;->rebootRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FileListActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FileListActivity$2;->this$0:Lcom/s0up/goomanager/FileListActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 105
    packed-switch p2, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 107
    :pswitch_0
    new-instance v0, Lcom/s0up/goomanager/ExtendedCommandBuilder;

    iget-object v1, p0, Lcom/s0up/goomanager/FileListActivity$2;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {v0, v1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;
    invoke-virtual {v0}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootRecoveryWithMsg()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
