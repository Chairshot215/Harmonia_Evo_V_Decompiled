.class Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxShortcutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->access$2100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_nNavbarIndex:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->access$2000(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;->onNavbarButtonLongTab(ILcom/htc/launcher/ItemInfo;)V

    .line 467
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 464
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;)V

    return-void
.end method
