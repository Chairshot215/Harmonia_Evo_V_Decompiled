.class Lcom/android/mms/ui/ComposeMessageActivity$3;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->recipientsEditorOnFocusChangeEvent(Z)V
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
    .line 2482
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2485
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    :goto_0
    return-void

    .line 2486
    :catch_0
    move-exception v0

    goto :goto_0
.end method
