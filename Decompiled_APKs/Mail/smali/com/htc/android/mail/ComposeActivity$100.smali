.class Lcom/htc/android/mail/ComposeActivity$100;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 12163
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$100;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 12165
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$100;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$100;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mQuotedFromOpenStatus:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$13000(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/htc/android/mail/ComposeActivity;->mQuotedFromOpenStatus:Z
    invoke-static {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->access$13002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 12166
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$100;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$100;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mQuotedFromOpenStatus:Z
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$13000(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v1

    #calls: Lcom/htc/android/mail/ComposeActivity;->showQutoedFullPannel(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$13100(Lcom/htc/android/mail/ComposeActivity;Z)V

    .line 12167
    return-void

    .line 12165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
