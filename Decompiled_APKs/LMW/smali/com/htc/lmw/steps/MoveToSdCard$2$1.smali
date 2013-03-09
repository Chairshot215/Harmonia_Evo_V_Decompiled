.class Lcom/htc/lmw/steps/MoveToSdCard$2$1;
.super Ljava/lang/Object;
.source "MoveToSdCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/MoveToSdCard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/lmw/steps/MoveToSdCard$2;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/MoveToSdCard$2;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/lmw/steps/MoveToSdCard$2$1;->this$1:Lcom/htc/lmw/steps/MoveToSdCard$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/lmw/steps/MoveToSdCard$2$1;->this$1:Lcom/htc/lmw/steps/MoveToSdCard$2;

    iget-object v0, v0, Lcom/htc/lmw/steps/MoveToSdCard$2;->this$0:Lcom/htc/lmw/steps/MoveToSdCard;

    #calls: Lcom/htc/lmw/steps/MoveToSdCard;->finishActivity()V
    invoke-static {v0}, Lcom/htc/lmw/steps/MoveToSdCard;->access$300(Lcom/htc/lmw/steps/MoveToSdCard;)V

    .line 184
    return-void
.end method
