.class Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;
.super Lcom/htc/android/htcime/ezsip/Keyboard$Key;
.source "AdvancedKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvKey"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;Lcom/htc/android/htcime/ezsip/Keyboard;IIIII)V
    .locals 7
    .parameter
    .parameter "keyboard"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "defaultGap"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 104
    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;-><init>(Lcom/htc/android/htcime/ezsip/Keyboard;IIIII)V

    .line 105
    return-void
.end method


# virtual methods
.method public inside(IIZ)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "tracing"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;->this$0:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isInside(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;IIZ)Z

    move-result v0

    .line 115
    .local v0, result:Z
    return v0
.end method

.method insideSuper(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v0

    return v0
.end method
