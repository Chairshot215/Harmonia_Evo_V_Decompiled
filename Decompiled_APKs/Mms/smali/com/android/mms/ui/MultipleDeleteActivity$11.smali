.class Lcom/android/mms/ui/MultipleDeleteActivity$11;
.super Lcom/android/mms/ui/MessagingListener;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 3

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2500(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$11;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2500(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1948
    return-void
.end method
