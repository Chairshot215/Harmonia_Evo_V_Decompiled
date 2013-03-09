.class Lcom/android/camera/component/SelfTimerUI$3;
.super Ljava/lang/Object;
.source "SelfTimerUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SelfTimerUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$200(Lcom/android/camera/component/SelfTimerUI;)Landroid/widget/TextView;

    move-result-object v1

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
