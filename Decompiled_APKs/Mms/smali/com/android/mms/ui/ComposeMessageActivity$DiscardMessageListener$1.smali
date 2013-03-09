.class Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2088
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 2091
    return-void
.end method
