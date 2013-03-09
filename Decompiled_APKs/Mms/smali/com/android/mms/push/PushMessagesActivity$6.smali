.class Lcom/android/mms/push/PushMessagesActivity$6;
.super Ljava/lang/Object;
.source "PushMessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 155
    iput-object p1, p0, Lcom/android/mms/push/PushMessagesActivity$6;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/push/PushMessagesActivity$6;->this$0:Lcom/android/mms/push/PushMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/push/PushMessagesActivity;->finish()V

    .line 159
    return-void
.end method
