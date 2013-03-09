.class Lcom/android/mms/push/PushMessagesActivity$4;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/push/PushMessagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/push/PushMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/push/PushMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$4;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-static {}, Lcom/android/mms/push/PushMessagesActivity;->access$100()Lcom/android/mms/push/PushMessagesActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/push/PushUtil;->cancelNotification(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$4;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    #setter for: Lcom/android/mms/push/PushMessagesActivity;->mLastSelectedPosition:I
    invoke-static {v0, p3}, Lcom/android/mms/push/PushMessagesActivity;->access$202(Lcom/android/mms/push/PushMessagesActivity;I)I

    .line 120
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$4;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    #calls: Lcom/android/mms/push/PushMessagesActivity;->displayMessage()V
    invoke-static {v0}, Lcom/android/mms/push/PushMessagesActivity;->access$300(Lcom/android/mms/push/PushMessagesActivity;)V

    .line 121
    return-void
.end method
