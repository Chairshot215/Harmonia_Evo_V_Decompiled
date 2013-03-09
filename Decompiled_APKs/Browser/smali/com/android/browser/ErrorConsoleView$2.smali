.class Lcom/android/browser/ErrorConsoleView$2;
.super Ljava/lang/Object;
.source "ErrorConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ErrorConsoleView;->commonSetupIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ErrorConsoleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ErrorConsoleView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/browser/ErrorConsoleView$2;->this$0:Lcom/android/browser/ErrorConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$2;->this$0:Lcom/android/browser/ErrorConsoleView;

    #getter for: Lcom/android/browser/ErrorConsoleView;->mCurrentShowState:I
    invoke-static {v0}, Lcom/android/browser/ErrorConsoleView;->access$200(Lcom/android/browser/ErrorConsoleView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$2;->this$0:Lcom/android/browser/ErrorConsoleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$2;->this$0:Lcom/android/browser/ErrorConsoleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_0
.end method
