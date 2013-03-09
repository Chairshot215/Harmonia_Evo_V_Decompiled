.class Lcom/s0up/goomanager/LoginActivity$ButtonListener;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final LOGIN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/LoginActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/LoginActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/s0up/goomanager/LoginActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/s0up/goomanager/LoginActivity$ButtonListener;->type:I

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 100
    iget v0, p0, Lcom/s0up/goomanager/LoginActivity$ButtonListener;->type:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 102
    :pswitch_0
    new-instance v0, Lcom/s0up/goomanager/LoginActivity$GetHash;

    iget-object v1, p0, Lcom/s0up/goomanager/LoginActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/LoginActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s0up/goomanager/LoginActivity$GetHash;-><init>(Lcom/s0up/goomanager/LoginActivity;Lcom/s0up/goomanager/LoginActivity$GetHash;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "go"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/LoginActivity$GetHash;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
