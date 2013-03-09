.class Lcom/android/smith/SystemLoggers$3;
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
    .line 1058
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$3;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1061
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1062
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$3;->this$0:Lcom/android/smith/SystemLoggers;

    const/4 v1, 0x0

    const-string v2, "Clearing, please wait ..."

    #calls: Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/smith/SystemLoggers;->access$400(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v0, Lcom/android/smith/SystemLoggers$Worker;

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$3;->this$0:Lcom/android/smith/SystemLoggers;

    const/4 v2, 0x4

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/smith/SystemLoggers$Worker;-><init>(Lcom/android/smith/SystemLoggers;II)V

    invoke-virtual {v0}, Lcom/android/smith/SystemLoggers$Worker;->start()V

    .line 1064
    return-void
.end method
