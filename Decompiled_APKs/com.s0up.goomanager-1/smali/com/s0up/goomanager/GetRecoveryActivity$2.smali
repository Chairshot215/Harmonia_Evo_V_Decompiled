.class Lcom/s0up/goomanager/GetRecoveryActivity$2;
.super Ljava/lang/Object;
.source "GetRecoveryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$2;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$2;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    .line 258
    return-void
.end method
