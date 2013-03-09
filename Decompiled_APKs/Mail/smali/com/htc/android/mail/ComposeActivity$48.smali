.class Lcom/htc/android/mail/ComposeActivity$48;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 6404
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$48;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 6406
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$48;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->toKeyEventImpl(Landroid/view/View;)Z
    invoke-static {v0, p1}, Lcom/htc/android/mail/ComposeActivity;->access$5900(Lcom/htc/android/mail/ComposeActivity;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
