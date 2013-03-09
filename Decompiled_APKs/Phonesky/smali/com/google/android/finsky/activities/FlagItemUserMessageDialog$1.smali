.class Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;
.super Ljava/lang/Object;
.source "FlagItemUserMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

.field final synthetic val$commentBox:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;->this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "buttonIndex"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;->this$0:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    #calls: Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->getListener()Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->access$000(Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;

    move-result-object v0

    .line 76
    .local v0, l:Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$1;->val$commentBox:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;->onPositiveClick(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
