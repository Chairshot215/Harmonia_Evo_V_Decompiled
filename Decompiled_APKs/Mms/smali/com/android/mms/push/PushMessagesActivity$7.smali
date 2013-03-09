.class Lcom/android/mms/push/PushMessagesActivity$7;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/push/PushMessagesActivity;->deleteAll()V
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
    .line 330
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$7;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$7;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    #getter for: Lcom/android/mms/push/PushMessagesActivity;->mPushAdapter:Lcom/android/mms/push/PushMessageAdapter;
    invoke-static {v0}, Lcom/android/mms/push/PushMessagesActivity;->access$400(Lcom/android/mms/push/PushMessagesActivity;)Lcom/android/mms/push/PushMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessageAdapter;->deleteAll()V

    .line 333
    return-void
.end method
