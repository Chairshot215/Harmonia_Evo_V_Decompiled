.class Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;
.super Ljava/lang/Object;
.source "ActivityMainWriteComment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->initPageComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #setter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$002(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;Z)Z

    .line 88
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$002(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;Z)Z

    .line 93
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$200(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 109
    return-void
.end method
