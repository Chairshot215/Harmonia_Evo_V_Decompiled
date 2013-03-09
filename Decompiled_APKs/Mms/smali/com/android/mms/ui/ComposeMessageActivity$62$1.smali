.class Lcom/android/mms/ui/ComposeMessageActivity$62$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$62;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$62;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$62;)V
    .locals 0
    .parameter

    .prologue
    .line 10862
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$62$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$62;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10864
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$62$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$62;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$62$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$62;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startNewCompose(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 10865
    return-void
.end method
