.class Lcom/htc/android/mail/ReadScreen$29;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3640
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$29;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$29;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->goToNextMail()Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$4500(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$29;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    .line 3643
    :cond_0
    return-void
.end method
