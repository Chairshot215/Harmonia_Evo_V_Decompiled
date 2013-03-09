.class public Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;
.super Ljava/lang/Object;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const-wide/16 v3, 0x12c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V
    invoke-static {v1, v0, v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    goto :goto_0
.end method
