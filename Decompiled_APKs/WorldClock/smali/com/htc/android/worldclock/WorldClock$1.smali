.class Lcom/htc/android/worldclock/WorldClock$1;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/WorldClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$1;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 190
    if-nez p3, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$1;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-virtual {v0, p2}, Lcom/htc/android/worldclock/WorldClock;->onClick(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method
