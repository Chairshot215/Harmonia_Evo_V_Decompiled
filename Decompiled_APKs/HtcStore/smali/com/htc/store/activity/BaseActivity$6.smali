.class Lcom/htc/store/activity/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$6;->this$0:Lcom/htc/store/activity/BaseActivity;

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
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, result:Z
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 470
    const/4 v0, 0x1

    .line 472
    :cond_0
    return v0
.end method
