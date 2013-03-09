.class Lcom/android/browser/Tab$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/browser/Tab$1;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/browser/Tab$1;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->processNextError()V
    invoke-static {v0}, Lcom/android/browser/Tab;->access$000(Lcom/android/browser/Tab;)V

    .line 514
    return-void
.end method
