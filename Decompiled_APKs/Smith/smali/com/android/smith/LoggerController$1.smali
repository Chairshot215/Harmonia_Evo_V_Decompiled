.class Lcom/android/smith/LoggerController$1;
.super Ljava/lang/Object;
.source "LoggerController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/LoggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/LoggerController;


# direct methods
.method constructor <init>(Lcom/android/smith/LoggerController;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/smith/LoggerController$1;->this$0:Lcom/android/smith/LoggerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/smith/LoggerController$1;->this$0:Lcom/android/smith/LoggerController;

    #calls: Lcom/android/smith/LoggerController;->removeRandom()V
    invoke-static {v0}, Lcom/android/smith/LoggerController;->access$000(Lcom/android/smith/LoggerController;)V

    .line 580
    iget-object v0, p0, Lcom/android/smith/LoggerController$1;->this$0:Lcom/android/smith/LoggerController;

    const/4 v1, 0x1

    #calls: Lcom/android/smith/LoggerController;->enableButtons(Z)V
    invoke-static {v0, v1}, Lcom/android/smith/LoggerController;->access$100(Lcom/android/smith/LoggerController;Z)V

    .line 581
    return-void
.end method
