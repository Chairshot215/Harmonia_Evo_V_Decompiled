.class Lcom/android/mms/ui/ComposeMessageActivity$73;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->postSendingMessage(Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13583
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 13585
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->contactId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->contactId:J

    :goto_0
    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->deleteTemporarySmsMessage(J)V
    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13300(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .line 13586
    return-void

    .line 13585
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$73;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->threadId:J

    goto :goto_0
.end method
