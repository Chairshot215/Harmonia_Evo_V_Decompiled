.class Lcom/google/android/voicesearch/RecognitionActivity$16;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->getActionWarningDialog(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;

.field final synthetic val$action:Lcom/google/android/voicesearch/actions/VoiceAction;

.field final synthetic val$marketUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iput-object p2, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$action:Lcom/google/android/voicesearch/actions/VoiceAction;

    iput-object p3, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$marketUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$action:Lcom/google/android/voicesearch/actions/VoiceAction;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->countAction(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    invoke-static {v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3500(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1027
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->val$marketUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1028
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$16;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/RecognitionActivity;->startActivity(Landroid/content/Intent;)V

    .line 1029
    return-void
.end method
