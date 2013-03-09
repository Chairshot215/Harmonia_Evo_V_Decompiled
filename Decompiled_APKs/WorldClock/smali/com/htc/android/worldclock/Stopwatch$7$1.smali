.class Lcom/htc/android/worldclock/Stopwatch$7$1;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/Stopwatch$7;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch$7;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$7$1;->this$1:Lcom/htc/android/worldclock/Stopwatch$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$7$1;->this$1:Lcom/htc/android/worldclock/Stopwatch$7;

    iget-object v0, v0, Lcom/htc/android/worldclock/Stopwatch$7;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 501
    return-void
.end method
