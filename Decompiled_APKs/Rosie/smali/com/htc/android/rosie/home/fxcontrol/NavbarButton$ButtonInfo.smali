.class final Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;
.super Ljava/lang/Object;
.source "NavbarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mIntent:Landroid/content/Intent;

.field private mMessage:I

.field private final mSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;ILandroid/content/Intent;Lcom/htc/fusion/fx/controls/FxSceneContainer;)V
    .locals 0
    .parameter
    .parameter "msg"
    .parameter "intent"
    .parameter "sc"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->this$0:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mMessage:I

    .line 200
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mIntent:Landroid/content/Intent;

    .line 201
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mMessage:I

    return v0
.end method


# virtual methods
.method public getSceneContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mSceneContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mIntent:Landroid/content/Intent;

    .line 211
    return-void
.end method

.method public updateButtonInfo(ILandroid/content/Intent;)V
    .locals 0
    .parameter "msg"
    .parameter "intent"

    .prologue
    .line 205
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mMessage:I

    .line 206
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->mIntent:Landroid/content/Intent;

    .line 207
    return-void
.end method
