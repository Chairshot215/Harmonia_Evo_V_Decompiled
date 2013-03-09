.class Lcom/android/htccontacts/link/DisplayLinkedActivity$4;
.super Ljava/lang/Object;
.source "DisplayLinkedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;->showAsyncProgressBeforeFinish(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$4;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 998
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1002
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
