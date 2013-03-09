.class final Lcom/android/mms/ui/MessageUtils$7;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1845
    :cond_0
    return-void
.end method
