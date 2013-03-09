.class public Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "NavbarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonClickListener"
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
.field mButtonInfo:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->this$0:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->access$100(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;)Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->mButtonInfo:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mMessage:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->access$000(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;->onClick(I)V

    .line 233
    return-void
.end method

.method public setButtonInfo(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;)V
    .locals 0
    .parameter "buttonInfo"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->mButtonInfo:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;

    .line 229
    return-void
.end method
