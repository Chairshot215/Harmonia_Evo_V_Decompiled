.class Lcom/htc/android/mail/activity/TipActivity$1$1;
.super Ljava/lang/Object;
.source "TipActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/activity/TipActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/activity/TipActivity$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/activity/TipActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/android/mail/activity/TipActivity$1$1;->this$1:Lcom/htc/android/mail/activity/TipActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/activity/TipActivity$1$1;->this$1:Lcom/htc/android/mail/activity/TipActivity$1;

    iget-object v0, v0, Lcom/htc/android/mail/activity/TipActivity$1;->this$0:Lcom/htc/android/mail/activity/TipActivity;

    #calls: Lcom/htc/android/mail/activity/TipActivity;->showCurrentStatus()Z
    invoke-static {v0}, Lcom/htc/android/mail/activity/TipActivity;->access$000(Lcom/htc/android/mail/activity/TipActivity;)Z

    .line 185
    return-void
.end method
