.class Lcom/android/phone/NetworkModeSelectionActivity$2;
.super Ljava/lang/Object;
.source "NetworkModeSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/NetworkModeSelectionActivity$2;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

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
    .line 122
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/phone/NetworkModeSelectionActivity$2;->this$0:Lcom/android/phone/NetworkModeSelectionActivity;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModeSelectionActivity;->finish()V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
