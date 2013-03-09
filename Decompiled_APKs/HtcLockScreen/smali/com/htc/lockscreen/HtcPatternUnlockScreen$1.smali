.class Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;
.super Ljava/lang/Object;
.source "HtcPatternUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcPatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 148
    return-void
.end method
