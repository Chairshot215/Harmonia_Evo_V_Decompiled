.class Lcom/htc/android/mail/activity/TipActivity$1;
.super Ljava/lang/Object;
.source "TipActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/activity/TipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/activity/TipActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/activity/TipActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/android/mail/activity/TipActivity$1;->this$0:Lcom/htc/android/mail/activity/TipActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/android/mail/activity/TipActivity$1;->this$0:Lcom/htc/android/mail/activity/TipActivity;

    #getter for: Lcom/htc/android/mail/activity/TipActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/activity/TipActivity;->access$100(Lcom/htc/android/mail/activity/TipActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/activity/TipActivity$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/activity/TipActivity$1$1;-><init>(Lcom/htc/android/mail/activity/TipActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/mail/activity/TipActivity;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 188
    return-void
.end method
