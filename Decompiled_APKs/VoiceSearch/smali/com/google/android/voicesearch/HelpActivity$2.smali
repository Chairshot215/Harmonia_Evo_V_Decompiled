.class Lcom/google/android/voicesearch/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/HelpDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #calls: Lcom/google/android/voicesearch/HelpActivity;->cancel()V
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpActivity;->access$100(Lcom/google/android/voicesearch/HelpActivity;)V

    .line 78
    return-void
.end method

.method public onSpeakAgain()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$2;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #calls: Lcom/google/android/voicesearch/HelpActivity;->speakAgain()V
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpActivity;->access$000(Lcom/google/android/voicesearch/HelpActivity;)V

    .line 73
    return-void
.end method
