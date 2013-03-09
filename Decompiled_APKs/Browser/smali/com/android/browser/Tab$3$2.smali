.class Lcom/android/browser/Tab$3$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$3;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$3;

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$3;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/android/browser/Tab$3$2;->this$1:Lcom/android/browser/Tab$3;

    iput-object p2, p0, Lcom/android/browser/Tab$3$2;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "d"
    .parameter "which"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/browser/Tab$3$2;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1011
    return-void
.end method
