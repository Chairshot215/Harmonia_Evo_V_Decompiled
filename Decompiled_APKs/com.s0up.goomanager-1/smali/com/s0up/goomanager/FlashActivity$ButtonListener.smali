.class Lcom/s0up/goomanager/FlashActivity$ButtonListener;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final ADD_ZIP:I = 0x2

.field private static final ORDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/FlashActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->type:I

    .line 141
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 145
    iget v2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->type:I

    packed-switch v2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 147
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-class v3, Lcom/s0up/goomanager/FlashOrderActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-virtual {v2, v0}, Lcom/s0up/goomanager/FlashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-class v3, Lcom/s0up/goomanager/FileChooser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v1, loadFileIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/s0up/goomanager/FlashActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-virtual {v2, v1}, Lcom/s0up/goomanager/FlashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
