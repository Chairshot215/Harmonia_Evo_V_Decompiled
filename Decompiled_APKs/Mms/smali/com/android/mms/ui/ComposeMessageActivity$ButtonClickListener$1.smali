.class Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 3547
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6010(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    .line 3550
    return-void
.end method
