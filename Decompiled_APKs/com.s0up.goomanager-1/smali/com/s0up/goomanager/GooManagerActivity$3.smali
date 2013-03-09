.class Lcom/s0up/goomanager/GooManagerActivity$3;
.super Ljava/lang/Object;
.source "GooManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GooManagerActivity;->rebootRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$3;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 212
    :pswitch_0
    new-instance v0, Lcom/s0up/goomanager/ExtendedCommandBuilder;

    iget-object v1, p0, Lcom/s0up/goomanager/GooManagerActivity$3;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v0, v1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;
    invoke-virtual {v0}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootRecoveryWithMsg()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
