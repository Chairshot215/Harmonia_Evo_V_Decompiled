.class Lcom/android/phone/CSCallForwardProgress$2;
.super Ljava/lang/Object;
.source "CSCallForwardProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CSCallForwardProgress;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CSCallForwardProgress;


# direct methods
.method constructor <init>(Lcom/android/phone/CSCallForwardProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/CSCallForwardProgress$2;->this$0:Lcom/android/phone/CSCallForwardProgress;

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
    .line 116
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/phone/CSCallForwardProgress$2;->this$0:Lcom/android/phone/CSCallForwardProgress;

    invoke-virtual {v0}, Lcom/android/phone/CSCallForwardProgress;->finish()V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
