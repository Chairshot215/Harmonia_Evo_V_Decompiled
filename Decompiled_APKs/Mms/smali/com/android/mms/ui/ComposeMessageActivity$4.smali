.class Lcom/android/mms/ui/ComposeMessageActivity$4;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientsEditorOnFocusChangeEvent(Z)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 2526
    return-void
.end method
