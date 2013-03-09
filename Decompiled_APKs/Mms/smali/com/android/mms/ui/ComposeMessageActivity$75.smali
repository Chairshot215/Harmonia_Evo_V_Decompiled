.class Lcom/android/mms/ui/ComposeMessageActivity$75;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 13895
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$75;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 13897
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$75;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$75;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->markAsRead(Landroid/content/Context;J)V

    .line 13898
    return-void
.end method
