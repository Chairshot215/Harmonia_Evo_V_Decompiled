.class Lcom/htc/android/mail/ComposeActivity$13;
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
    .line 1825
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$13;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1827
    invoke-super {p0, p1, p2}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 1828
    if-eqz p2, :cond_1

    .line 1829
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ccFocusEventSapphire>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$13;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput-object p1, v0, Lcom/htc/android/mail/ComposeActivity;->lastView:Landroid/view/View;

    .line 1831
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$13;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->scrollCC()V

    .line 1833
    :cond_1
    return-void
.end method
