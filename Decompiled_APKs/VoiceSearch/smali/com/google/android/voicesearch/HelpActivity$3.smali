.class Lcom/google/android/voicesearch/HelpActivity$3;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 84
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpActivity$3;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$3;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 88
    return-void
.end method
