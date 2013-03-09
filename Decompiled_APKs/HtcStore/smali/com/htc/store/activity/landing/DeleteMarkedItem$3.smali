.class Lcom/htc/store/activity/landing/DeleteMarkedItem$3;
.super Ljava/lang/Object;
.source "DeleteMarkedItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$3;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
