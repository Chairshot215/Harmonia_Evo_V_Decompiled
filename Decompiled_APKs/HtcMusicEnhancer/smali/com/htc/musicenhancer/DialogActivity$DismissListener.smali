.class Lcom/htc/musicenhancer/DialogActivity$DismissListener;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/DialogActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/musicenhancer/DialogActivity$DismissListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DismissListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/DialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DismissListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/DialogActivity;->finish()V

    .line 230
    :cond_0
    return-void
.end method
