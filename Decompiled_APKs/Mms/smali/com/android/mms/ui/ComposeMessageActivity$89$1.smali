.class Lcom/android/mms/ui/ComposeMessageActivity$89$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$89;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$89;

.field final synthetic val$result:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$89;Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15867
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$89$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$89;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$89$1;->val$result:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 15869
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$89$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$89;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$cb:Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$89$1;->val$result:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    invoke-interface {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;->onSentResult(Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V

    .line 15870
    return-void
.end method
