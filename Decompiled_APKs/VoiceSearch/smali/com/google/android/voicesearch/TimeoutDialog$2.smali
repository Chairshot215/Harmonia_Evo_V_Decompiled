.class Lcom/google/android/voicesearch/TimeoutDialog$2;
.super Ljava/lang/Object;
.source "TimeoutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/TimeoutDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/TimeoutDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog$2;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog$2;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutMillis:I
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/TimeoutDialog;->access$002(Lcom/google/android/voicesearch/TimeoutDialog;I)I

    .line 135
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog$2;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    #getter for: Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->access$100(Lcom/google/android/voicesearch/TimeoutDialog;)Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog$2;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    #getter for: Lcom/google/android/voicesearch/TimeoutDialog;->mTimeoutListener:Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;
    invoke-static {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->access$100(Lcom/google/android/voicesearch/TimeoutDialog;)Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;->onGo()V

    .line 138
    :cond_0
    return-void
.end method
