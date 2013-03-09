.class Lcom/htc/android/epst/ListItemsActivity$1;
.super Ljava/lang/Thread;
.source "ListItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->onUserLeaveHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$1;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "ListItemsActivity"

    const-string v1, "WiMaxController.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/wimax/WiMaxController;->onDestroy()V

    .line 336
    return-void
.end method
