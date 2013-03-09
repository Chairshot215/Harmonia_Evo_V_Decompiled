.class Lcom/google/android/voicesearch/DisambigDialog$3;
.super Ljava/lang/Object;
.source "DisambigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/DisambigDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/DisambigDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/DisambigDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$3;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$3;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    #getter for: Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/DisambigDialog;->access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$3;->this$0:Lcom/google/android/voicesearch/DisambigDialog;

    #getter for: Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/DisambigDialog;->access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/DisambigDialog$Listener;->onCancel()V

    .line 100
    :cond_0
    return-void
.end method
