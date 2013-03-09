.class Lcom/android/smith/SystemLoggers$2;
.super Ljava/lang/Object;
.source "SystemLoggers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/SystemLoggers;


# direct methods
.method constructor <init>(Lcom/android/smith/SystemLoggers;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$2;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1052
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$2;->this$0:Lcom/android/smith/SystemLoggers;

    #setter for: Lcom/android/smith/SystemLoggers;->mRunning:Z
    invoke-static {v0, v1}, Lcom/android/smith/SystemLoggers;->access$002(Lcom/android/smith/SystemLoggers;Z)Z

    .line 1053
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$2;->this$0:Lcom/android/smith/SystemLoggers;

    #calls: Lcom/android/smith/SystemLoggers;->updateViews(Z)V
    invoke-static {v0, v1}, Lcom/android/smith/SystemLoggers;->access$300(Lcom/android/smith/SystemLoggers;Z)V

    .line 1054
    return-void
.end method
