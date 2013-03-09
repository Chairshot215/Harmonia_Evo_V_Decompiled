.class Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;
.super Ljava/lang/Object;
.source "BaseGmailActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;->this$1:Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;->this$1:Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;

    iget-object v0, v0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->this$0:Lcom/google/android/gm/BaseGmailActionBar;

    iget-object v0, v0, Lcom/google/android/gm/BaseGmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler$1;->this$1:Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;

    #getter for: Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;->access$000(Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->startActionBarStatusCursorLoader(Ljava/lang/String;)V

    .line 384
    return-void
.end method
