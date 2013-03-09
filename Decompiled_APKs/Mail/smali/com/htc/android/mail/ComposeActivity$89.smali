.class Lcom/htc/android/mail/ComposeActivity$89;
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
    .line 10822
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$89;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 10824
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$89;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 10825
    const/4 v0, 0x0

    return v0
.end method
