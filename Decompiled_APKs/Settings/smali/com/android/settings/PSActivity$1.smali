.class Lcom/android/settings/PSActivity$1;
.super Ljava/lang/Object;
.source "PSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/PSActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/PSActivity$1;->this$0:Lcom/android/settings/PSActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "keyevent"

    .prologue
    .line 70
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/PSActivity$1;->this$0:Lcom/android/settings/PSActivity;

    invoke-virtual {v0}, Lcom/android/settings/PSActivity;->finish()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
