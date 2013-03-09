.class Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 15538
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 15540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->access$14600(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15543
    return-void
.end method
