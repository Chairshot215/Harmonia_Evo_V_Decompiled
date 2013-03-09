.class Lcom/htc/android/mail/ComposeActivity$22;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2602
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$22;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2604
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$22;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->access$3602(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/Attachment;)Lcom/htc/android/mail/Attachment;

    .line 2605
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$22;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->curBtn:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->access$3702(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge;

    .line 2606
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$22;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->showAttacOption()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3800(Lcom/htc/android/mail/ComposeActivity;)V

    .line 2607
    return-void
.end method
