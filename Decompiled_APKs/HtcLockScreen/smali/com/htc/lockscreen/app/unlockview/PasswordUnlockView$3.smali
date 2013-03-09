.class Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$3;
.super Ljava/lang/Object;
.source "PasswordUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    iget-object v0, v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 465
    return-void
.end method
