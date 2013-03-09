.class Lcom/android/mms/ui/ComposeMessageActivity$99;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setNGMGroupConversationTitle()V
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
    .line 17317
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 17319
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 17320
    return-void
.end method
