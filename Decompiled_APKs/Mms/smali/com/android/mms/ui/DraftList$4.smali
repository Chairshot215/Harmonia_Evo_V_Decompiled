.class Lcom/android/mms/ui/DraftList$4;
.super Lcom/android/mms/ui/MessagingListener;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftList;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$4;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$4;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$500(Lcom/android/mms/ui/DraftList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftList$4;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/DraftList;->access$500(Lcom/android/mms/ui/DraftList;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void
.end method
