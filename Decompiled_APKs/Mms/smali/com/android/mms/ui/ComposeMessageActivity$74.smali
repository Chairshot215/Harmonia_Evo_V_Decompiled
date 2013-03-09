.class Lcom/android/mms/ui/ComposeMessageActivity$74;
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
    .line 13592
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13594
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$finalResult:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->dests:[Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateContactFrequency([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13400(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)V

    .line 13595
    return-void
.end method
