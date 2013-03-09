.class Lcom/android/mms/push/PushMessagesActivity$8;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/push/PushMessagesActivity;->showDeleteWarning()V
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
    .line 370
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$8;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$8;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    #calls: Lcom/android/mms/push/PushMessagesActivity;->deletePushMessage()V
    invoke-static {v0}, Lcom/android/mms/push/PushMessagesActivity;->access$500(Lcom/android/mms/push/PushMessagesActivity;)V

    .line 374
    return-void
.end method
