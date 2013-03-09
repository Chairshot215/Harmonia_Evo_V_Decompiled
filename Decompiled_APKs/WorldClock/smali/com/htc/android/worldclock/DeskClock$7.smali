.class Lcom/htc/android/worldclock/DeskClock$7;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$7;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1361
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.DESK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$7;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v1, v0}, Lcom/htc/android/worldclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    .line 1363
    return-void
.end method
