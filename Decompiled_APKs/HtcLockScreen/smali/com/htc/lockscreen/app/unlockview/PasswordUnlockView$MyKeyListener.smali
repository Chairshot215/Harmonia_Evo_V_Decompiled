.class Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$MyKeyListener;
.super Landroid/text/method/TextKeyListener;
.source "PasswordUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V
    .locals 2
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$MyKeyListener;->this$0:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    .line 474
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 476
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0x81

    return v0
.end method
