.class Lcom/android/mms/ui/MessageTabSwitchActivity$1;
.super Ljava/lang/Object;
.source "MessageTabSwitchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageTabSwitchActivity;->postRefreshAllMessageUnreadCounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$1;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$1;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts()V

    .line 341
    return-void
.end method
