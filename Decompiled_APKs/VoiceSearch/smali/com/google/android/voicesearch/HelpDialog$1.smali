.class Lcom/google/android/voicesearch/HelpDialog$1;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 136
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$000(Lcom/google/android/voicesearch/HelpDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    .line 140
    .local v1, oldPosition:I
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v3}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCount()I

    move-result v3

    rem-int v0, v2, v3

    .line 142
    .local v0, newPosition:I
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 143
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/voicesearch/HelpDialog;->access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/HelpDialog$1;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    #getter for: Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/voicesearch/HelpDialog;->access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xdac

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
