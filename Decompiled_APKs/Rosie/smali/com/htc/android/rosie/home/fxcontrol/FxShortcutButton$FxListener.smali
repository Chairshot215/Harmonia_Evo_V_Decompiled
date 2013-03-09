.class final Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxShortcutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FxListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mTag:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mTag:Ljava/lang/String;

    .line 341
    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V

    return-void
.end method

.method private setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    .line 352
    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 344
    const-string v0, "FxShortcutButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SHORTCUT_DEBUG] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onClick() ItemInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->mListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;->onClick(Lcom/htc/launcher/FxItem;)V

    .line 348
    :cond_0
    return-void
.end method
