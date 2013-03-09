.class public Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;
.super Ljava/lang/Object;
.source "FxPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
    }
.end annotation


# static fields
.field private static final LANDSCAPE_PATH:Ljava/lang/String; = "Land/scenes/"

.field private static final PORTRAIT_PATH:Ljava/lang/String; = "Port/scenes/"


# instance fields
.field private mDisplay:Landroid/view/Display;


# direct methods
.method private constructor <init>(Landroid/view/Display;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;->mDisplay:Landroid/view/Display;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/view/Display;)Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;
    .locals 1
    .parameter "display"

    .prologue
    .line 33
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;-><init>(Landroid/view/Display;)V

    return-object v0
.end method


# virtual methods
.method public getPath()Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .local v1, w:I
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 43
    .local v0, h:I
    if-gt v1, v0, :cond_0

    .line 44
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    .line 46
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->LANDSCAPE:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    goto :goto_0
.end method

.method public getPath(I)Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
    .locals 1
    .parameter "rotation"

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_0:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    .line 60
    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_90:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_180:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    goto :goto_0

    .line 60
    :pswitch_2
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_270:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
