.class Lcom/htc/dlnamediaserver/DialogBox$2;
.super Ljava/lang/Object;
.source "DialogBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/DialogBox;->OKExit(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/DialogBox;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/DialogBox;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DialogBox$2;->this$0:Lcom/htc/dlnamediaserver/DialogBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DialogBox$2;->this$0:Lcom/htc/dlnamediaserver/DialogBox;

    iget-object p0, v0, Lcom/htc/dlnamediaserver/DialogBox;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    return-void
.end method
