.class Lcom/htc/cs/activity/accountactivities/CSProgressDialog$1;
.super Ljava/lang/Object;
.source "CSProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$1;->this$0:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

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
    .line 71
    const/4 v0, 0x1

    return v0
.end method
