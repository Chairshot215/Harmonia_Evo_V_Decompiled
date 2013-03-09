.class Lcom/htc/android/mail/ComposeActivity$79;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->setReceiverNotCheck(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$tocc_:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9050
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$79;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput p2, p0, Lcom/htc/android/mail/ComposeActivity$79;->val$tocc_:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9052
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$79;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9053
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9054
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$79;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v1, p0, Lcom/htc/android/mail/ComposeActivity$79;->val$tocc_:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->getContacts(I)V

    .line 9056
    :cond_0
    return-void
.end method
