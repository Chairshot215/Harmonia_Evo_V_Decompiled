.class Lcom/htc/android/psclient/WarningMsg$1;
.super Ljava/lang/Object;
.source "WarningMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/WarningMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/WarningMsg;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/WarningMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/psclient/WarningMsg$1;->this$0:Lcom/htc/android/psclient/WarningMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/psclient/WarningMsg$1;->this$0:Lcom/htc/android/psclient/WarningMsg;

    invoke-virtual {v0}, Lcom/htc/android/psclient/WarningMsg;->finish()V

    .line 30
    return-void
.end method
