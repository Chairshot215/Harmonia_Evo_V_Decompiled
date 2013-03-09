.class Lcom/android/mms/ui/ComposeMessageActivity$23;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6248
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6250
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDialogInfoMsg:Lcom/android/mms/msg/MultimediaMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/msg/MultimediaMessage;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(Lcom/android/mms/msg/MultimediaMessage;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/MultimediaMessage;Z)V

    .line 6251
    return-void
.end method
