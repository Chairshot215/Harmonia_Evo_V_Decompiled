.class Lcom/google/android/voicesearch/HelpDialog$8;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 324
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$8;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->stopAutoScroll()V

    .line 329
    const/4 v0, 0x0

    return v0
.end method
