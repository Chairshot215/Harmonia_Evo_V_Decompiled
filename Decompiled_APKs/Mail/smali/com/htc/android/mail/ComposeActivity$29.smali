.class Lcom/htc/android/mail/ComposeActivity$29;
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
    .line 4529
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$29;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 4531
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$29;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->toListExpand(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$5000(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 4532
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$29;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->toListExpand(IZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/android/mail/ComposeActivity;->access$5000(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 4533
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$29;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x2

    #calls: Lcom/htc/android/mail/ComposeActivity;->toListExpand(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$5000(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 4535
    return-void
.end method
