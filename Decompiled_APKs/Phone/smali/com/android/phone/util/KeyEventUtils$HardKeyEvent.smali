.class public Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;
.super Ljava/lang/Object;
.source "KeyEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/KeyEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardKeyEvent"
.end annotation


# instance fields
.field private mContent:Landroid/text/Editable;

.field private mKeyCode:I

.field private mMetaState:I


# direct methods
.method public constructor <init>(Landroid/text/Editable;Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "content"
    .parameter "origEvent"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    .line 62
    iput v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mMetaState:I

    .line 63
    iput v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    .line 66
    iput-object p1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    .line 67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    .line 68
    invoke-static {p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mMetaState:I

    .line 69
    return-void
.end method


# virtual methods
.method public clearMetaState()V
    .locals 3

    .prologue
    .line 97
    iget v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mMetaState:I

    and-int/lit8 v2, v2, 0x1

    or-int v0, v1, v2

    .line 98
    .local v0, clearedState:I
    iget-object v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    invoke-static {v1, v0}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 99
    return-void
.end method

.method public getAltState()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getChar()C
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->getAltState()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mapAltChar()C

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mapChar()C

    move-result v0

    goto :goto_0
.end method

.method public getShiftState()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public getSymState()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mContent:Landroid/text/Editable;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public isAlphabet()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    const/16 v1, 0x36

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapAltChar()C
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/android/phone/util/KeyEventUtils;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/util/KeyEventUtils;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 81
    .local v0, c:C
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #c:C
    :goto_1
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .restart local v0       #c:C
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mapChar()C

    move-result v0

    goto :goto_1
.end method

.method public mapChar()C
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/android/phone/util/KeyEventUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/util/KeyEventUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/util/KeyEventUtils$HardKeyEvent;->mKeyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
