.class final Lcom/android/htccontacts/util/ContactsUtils$7;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsUtils;->getDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/app/HtcProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2705
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
    .line 2707
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 2708
    const/4 v0, 0x1

    .line 2711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
