.class public Lcom/htc/fm/MusicListActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/MusicListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/fm/MusicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$EditTextWatcher;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 729
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 718
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity$EditTextWatcher;->this$0:Lcom/htc/fm/MusicListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fm/MusicListActivity;->onSearch(Ljava/lang/String;)V

    .line 726
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/MusicListActivity$EditTextWatcher;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-virtual {v1, v0}, Lcom/htc/fm/MusicListActivity;->onSearch(Ljava/lang/String;)V

    goto :goto_0
.end method
