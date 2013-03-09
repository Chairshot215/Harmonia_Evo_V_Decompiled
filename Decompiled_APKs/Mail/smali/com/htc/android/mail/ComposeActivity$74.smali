.class Lcom/htc/android/mail/ComposeActivity$74;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 8496
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$74;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "i"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 8498
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 8499
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$74;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    .line 8501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
