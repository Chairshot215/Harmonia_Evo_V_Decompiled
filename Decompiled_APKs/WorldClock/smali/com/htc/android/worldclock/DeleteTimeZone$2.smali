.class Lcom/htc/android/worldclock/DeleteTimeZone$2;
.super Ljava/lang/Object;
.source "DeleteTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteTimeZone;->updateDeleteZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;-><init>(Lcom/htc/android/worldclock/DeleteTimeZone$2;)V

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteTimeZone$2$1;->start()V

    .line 140
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeleteTimeZone;->setResult(I)V

    .line 141
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteTimeZone$2;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteTimeZone;->finish()V

    goto :goto_0
.end method
