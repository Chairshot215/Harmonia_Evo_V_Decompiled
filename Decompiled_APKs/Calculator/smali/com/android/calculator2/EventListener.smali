.class Lcom/android/calculator2/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final EQUAL:[C

.field private static final MEMORY_OPERATION_ENABLED:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Lcom/android/calculator2/Logic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    sput-object v0, Lcom/android/calculator2/EventListener;->EQUAL:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 39
    .local v0, id:I
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    if-eqz v3, :cond_1

    .line 40
    const/4 v1, -0x1

    .line 42
    .local v1, stringId:I
    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3, v2}, Lcom/android/calculator2/Logic;->insert(Ljava/lang/String;)V

    .line 128
    .end local v1           #stringId:I
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    return-void

    .line 45
    .restart local v1       #stringId:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onDelete()V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onClear()V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_0

    .line 57
    :pswitch_3
    const v1, 0x7f080007

    goto :goto_0

    .line 59
    :pswitch_4
    const v1, 0x7f080008

    goto :goto_0

    .line 61
    :pswitch_5
    const v1, 0x7f080009

    goto :goto_0

    .line 63
    :pswitch_6
    const v1, 0x7f08000a

    goto :goto_0

    .line 65
    :pswitch_7
    const v1, 0x7f08000b

    goto :goto_0

    .line 67
    :pswitch_8
    const v1, 0x7f08000c

    goto :goto_0

    .line 69
    :pswitch_9
    const v1, 0x7f08000d

    goto :goto_0

    .line 71
    :pswitch_a
    const v1, 0x7f08000e

    goto :goto_0

    .line 73
    :pswitch_b
    const v1, 0x7f08000f

    goto :goto_0

    .line 75
    :pswitch_c
    const v1, 0x7f080010

    goto :goto_0

    .line 78
    :pswitch_d
    const v1, 0x7f080011

    .line 79
    goto :goto_0

    .line 81
    :pswitch_e
    const v1, 0x7f080012

    goto :goto_0

    .line 83
    :pswitch_f
    const v1, 0x7f080013

    goto :goto_0

    .line 85
    :pswitch_10
    const v1, 0x7f080014

    goto :goto_0

    .line 87
    :pswitch_11
    const v1, 0x7f080015

    goto :goto_0

    .line 90
    :pswitch_12
    const v1, 0x7f080016

    goto :goto_0

    .line 92
    :pswitch_13
    const v1, 0x7f080017

    goto :goto_0

    .line 94
    :pswitch_14
    const v1, 0x7f080018

    goto/16 :goto_0

    .line 96
    :pswitch_15
    const v1, 0x7f08001c

    goto/16 :goto_0

    .line 98
    :pswitch_16
    const v1, 0x7f08001d

    goto/16 :goto_0

    .line 100
    :pswitch_17
    const v1, 0x7f080022

    goto/16 :goto_0

    .line 102
    :pswitch_18
    const v1, 0x7f08001a

    goto/16 :goto_0

    .line 104
    :pswitch_19
    const v1, 0x7f08001b

    goto/16 :goto_0

    .line 106
    :pswitch_1a
    const v1, 0x7f080021

    goto/16 :goto_0

    .line 108
    :pswitch_1b
    const v1, 0x7f08001e

    goto/16 :goto_0

    .line 110
    :pswitch_1c
    const v1, 0x7f08001f

    goto/16 :goto_0

    .line 112
    :pswitch_1d
    const v1, 0x7f080020

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0004
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_10
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_11
        :pswitch_3
        :pswitch_f
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v5, 0x15

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, action:I
    if-eq p2, v5, :cond_0

    const/16 v4, 0x16

    if-ne p2, v4, :cond_3

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    if-ne p2, v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/calculator2/Logic;->eatHorizontalMove(Z)Z

    move-result v1

    .local v1, eat:Z
    move v2, v1

    .line 219
    .end local v1           #eat:Z
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v2, v3

    .line 171
    goto :goto_0

    .line 176
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    if-eqz p2, :cond_1

    .line 182
    :cond_4
    sget-object v4, Lcom/android/calculator2/EventListener;->EQUAL:[C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    .line 183
    if-ne v0, v2, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_1

    .line 189
    :cond_5
    const/16 v4, 0x17

    if-eq p2, v4, :cond_6

    const/16 v4, 0x13

    if-eq p2, v4, :cond_6

    const/16 v4, 0x14

    if-eq p2, v4, :cond_6

    const/16 v4, 0x42

    if-eq p2, v4, :cond_6

    move v2, v3

    .line 193
    goto :goto_1

    .line 203
    :cond_6
    if-ne v0, v2, :cond_1

    .line 204
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 211
    :sswitch_0
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onUp()V

    goto :goto_1

    .line 207
    :sswitch_1
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_1

    .line 215
    :sswitch_2
    iget-object v3, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v3}, Lcom/android/calculator2/Logic;->onDown()V

    goto :goto_1

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    .local v0, id:I
    const v2, 0x7f0a000b

    if-ne v0, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onClear()V

    .line 138
    const/4 v1, 0x1

    .line 160
    :cond_0
    return v1
.end method

.method setHandler(Landroid/content/Context;Lcom/android/calculator2/Logic;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/calculator2/EventListener;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    .line 33
    return-void
.end method
