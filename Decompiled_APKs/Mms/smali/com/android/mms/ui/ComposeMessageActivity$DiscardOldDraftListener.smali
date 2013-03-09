.class Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardOldDraftListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 15245
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15245
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 15247
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 15248
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->startNewCompose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 15249
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardOldDraftListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 15250
    return-void
.end method
