.class Lcom/htc/store/activity/EntryActivity$2;
.super Ljava/lang/Object;
.source "EntryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/EntryActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/EntryActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/EntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity$2;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "code"
    .parameter "event"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, result:Z
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method
