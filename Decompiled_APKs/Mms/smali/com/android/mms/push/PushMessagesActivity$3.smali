.class Lcom/android/mms/push/PushMessagesActivity$3;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 77
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$3;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$3;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessagesActivity;->updateReadStatus()V

    .line 81
    return-void
.end method
