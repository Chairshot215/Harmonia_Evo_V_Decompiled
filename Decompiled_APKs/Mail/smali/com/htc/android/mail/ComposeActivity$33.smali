.class Lcom/htc/android/mail/ComposeActivity$33;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 4888
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$33;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4891
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4893
    packed-switch p2, :pswitch_data_0

    .line 4904
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4900
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$33;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->toKeyEventImpl(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/htc/android/mail/ComposeActivity;->access$5900(Lcom/htc/android/mail/ComposeActivity;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 4893
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
