.class Lcom/htc/android/mail/ComposeActivity$11;
.super Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$11;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1793
    invoke-super {p0, p1, p2}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 1794
    if-eqz p2, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$11;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p1, v0, Lcom/htc/android/mail/ComposeActivity;->lastView:Landroid/view/View;

    .line 1797
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$11$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ComposeActivity$11$1;-><init>(Lcom/htc/android/mail/ComposeActivity$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1802
    :cond_0
    return-void
.end method
