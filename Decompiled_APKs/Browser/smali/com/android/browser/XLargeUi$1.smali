.class Lcom/android/browser/XLargeUi$1;
.super Ljava/lang/Object;
.source "XLargeUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/XLargeUi;->checkTabCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/XLargeUi;


# direct methods
.method constructor <init>(Lcom/android/browser/XLargeUi;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/browser/XLargeUi$1;->this$0:Lcom/android/browser/XLargeUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/browser/XLargeUi$1;->this$0:Lcom/android/browser/XLargeUi;

    #getter for: Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/browser/XLargeUi;->access$000(Lcom/android/browser/XLargeUi;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 125
    return-void
.end method
