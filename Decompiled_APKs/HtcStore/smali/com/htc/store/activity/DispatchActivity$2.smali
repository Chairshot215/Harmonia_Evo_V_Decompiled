.class Lcom/htc/store/activity/DispatchActivity$2;
.super Ljava/lang/Object;
.source "DispatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/DispatchActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/DispatchActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/DispatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/store/activity/DispatchActivity$2;->this$0:Lcom/htc/store/activity/DispatchActivity;

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
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, result:Z
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    return v0
.end method
