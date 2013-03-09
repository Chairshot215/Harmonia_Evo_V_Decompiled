.class Lcom/htc/android/mail/ReadScreen$39;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 4692
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$39;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "i"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 4694
    const/4 v1, 0x4

    if-ne v1, p2, :cond_0

    .line 4695
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$39;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ReadScreen;->removeDialog(I)V

    .line 4696
    const/4 v0, 0x1

    .line 4698
    :cond_0
    return v0
.end method
