.class public Lcom/android/htccontacts/widget/InterceptSearchKeyDialogKeyListener;
.super Ljava/lang/Object;
.source "InterceptSearchKeyDialogKeyListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    .line 13
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
