.class Lcom/android/mms/ui/ComposeMessageActivity$1$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

.field final synthetic val$message:Lcom/android/mms/msg/TextMessage;

.field final synthetic val$tblock:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$1;Lcom/android/mms/msg/TextMessage;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->val$message:Lcom/android/mms/msg/TextMessage;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->val$tblock:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$1;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->val$message:Lcom/android/mms/msg/TextMessage;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$1$1;->val$tblock:I

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->copyToPhoneMemory(Lcom/android/mms/msg/AbstractMessage;ZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;ZI)V

    .line 1313
    return-void
.end method
