.class Lcom/android/mms/push/PushMessagesActivity$2;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/push/PushMessagesActivity;
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
    .line 71
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$2;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$2;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessagesActivity;->updateReadStatus()V

    .line 74
    return-void
.end method
