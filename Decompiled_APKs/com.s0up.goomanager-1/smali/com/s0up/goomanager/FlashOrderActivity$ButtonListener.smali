.class Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final FLASH:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashOrderActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/FlashOrderActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;->type:I

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 133
    iget v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;->type:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashOrderActivity;

    #calls: Lcom/s0up/goomanager/FlashOrderActivity;->prepareFlash()V
    invoke-static {v0}, Lcom/s0up/goomanager/FlashOrderActivity;->access$0(Lcom/s0up/goomanager/FlashOrderActivity;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
