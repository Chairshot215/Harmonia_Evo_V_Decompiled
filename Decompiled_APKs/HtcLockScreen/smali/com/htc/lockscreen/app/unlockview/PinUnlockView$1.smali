.class Lcom/htc/lockscreen/app/unlockview/PinUnlockView$1;
.super Ljava/lang/Object;
.source "PinUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$1;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$1;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    iget-object v0, v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 283
    return-void
.end method
