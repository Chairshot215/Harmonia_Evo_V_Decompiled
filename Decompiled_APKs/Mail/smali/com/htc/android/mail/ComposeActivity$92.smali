.class Lcom/htc/android/mail/ComposeActivity$92;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
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
    .line 11070
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$92;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 11072
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$92;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->requestFocus()Z

    .line 11073
    const/4 v0, 0x0

    return v0
.end method
