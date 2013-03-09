.class Lcom/s0up/goomanager/AboutActivity$ButtonListener;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final BACK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/AboutActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/AboutActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/s0up/goomanager/AboutActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/s0up/goomanager/AboutActivity$ButtonListener;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 28
    iget v0, p0, Lcom/s0up/goomanager/AboutActivity$ButtonListener;->type:I

    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 30
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
