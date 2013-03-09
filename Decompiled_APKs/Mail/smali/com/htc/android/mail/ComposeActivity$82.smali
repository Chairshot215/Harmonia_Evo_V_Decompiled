.class Lcom/htc/android/mail/ComposeActivity$82;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->setupObserver()V
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
    .line 9531
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9533
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$82;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->uiHander:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$11300(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/ComposeActivity$82$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/ComposeActivity$82$1;-><init>(Lcom/htc/android/mail/ComposeActivity$82;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9543
    return-void
.end method
