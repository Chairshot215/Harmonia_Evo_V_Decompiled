.class Lcom/htc/lockscreen/HtcPatternUnlockScreen$3;
.super Ljava/lang/Object;
.source "HtcPatternUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcPatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ILandroid/content/Context;)V
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
    .line 289
    iput-object p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$3;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$3;->this$0:Lcom/htc/lockscreen/HtcPatternUnlockScreen;

    #getter for: Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 293
    return-void
.end method
