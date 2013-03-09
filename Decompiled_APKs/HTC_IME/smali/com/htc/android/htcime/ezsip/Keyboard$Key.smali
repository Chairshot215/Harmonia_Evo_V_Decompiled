.class public Lcom/htc/android/htcime/ezsip/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I = null

.field private static final KEY_STATE_NORMAL_OFF:[I = null

.field private static final KEY_STATE_NORMAL_ON:[I = null

.field private static final KEY_STATE_PRESSED:[I = null

.field private static final KEY_STATE_PRESSED_OFF:[I = null

.field private static final KEY_STATE_PRESSED_ON:[I = null

.field private static final KEY_STATE_SHIFT_LOCK:[I = null

.field private static final KEY_STATE_SHIFT_OFF:[I = null

.field private static final KEY_STATE_SHIFT_ON:[I = null

.field public static final SHIFT_LOCK:I = 0x3

.field public static final SHIFT_OFF:I = 0x1

.field public static final SHIFT_ON:I = 0x2


# instance fields
.field public accentType:I

.field public alignIndex:I

.field public codes:[I

.field public edgeFlags:I

.field public enable:Z

.field public function:Z

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public iconShiftY:I

.field protected keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public labelShiftX:I

.field private labelShiftXBase:I

.field public labelShiftY:I

.field public longpressPreview:Landroid/graphics/drawable/Drawable;

.field public mFeedBackBG:I

.field public mGrouped:I

.field protected mSpecificKeyDrawable:Landroid/graphics/drawable/Drawable;

.field public mSplitLabel:Z

.field public mXT9IdxMap:I

.field public modifier:Z

.field public multiLine:Z

.field public multiLineLabelLower:Ljava/lang/CharSequence;

.field public multiLineLabelUpper:Ljava/lang/CharSequence;

.field public multiState:I

.field public multichars:Ljava/lang/CharSequence;

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field protected popupDelay_L:I

.field protected popupDelay_S:I

.field public popupResId:I

.field public pos:Landroid/graphics/Rect;

.field public pressed:Z

.field public repeatable:Z

.field public showPreview:Z

.field public splitLeft:Z

.field public splitRight:Z

.field public splitSet:I

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public textScale:F

.field public top_label:Ljava/lang/CharSequence;

.field public toplabelShiftX:I

.field public toplabelShiftY:I

.field private validateLower:Z

.field private validateUpper:Z

.field public vgap:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x101009f

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 585
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_OFF:[I

    .line 587
    new-array v0, v1, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_ON:[I

    .line 590
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_LOCK:[I

    .line 596
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 601
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 607
    new-array v0, v1, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 611
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 616
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 619
    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    .line 590
    nop

    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 596
    :array_1
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 601
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 611
    :array_3
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/android/htcime/ezsip/Keyboard;IIIII)V
    .locals 4
    .parameter "keyboard"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "defaultGap"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    .line 536
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_S:I

    .line 565
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSpecificKeyDrawable:Landroid/graphics/drawable/Drawable;

    .line 567
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSplitLabel:Z

    .line 569
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    .line 570
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    .line 571
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconShiftY:I

    .line 572
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftX:I

    .line 573
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftY:I

    .line 574
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    .line 575
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    .line 577
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftXBase:I

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    .line 624
    iput p2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    .line 625
    iput p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    .line 626
    iput p4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    .line 627
    iput p5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    .line 628
    iput p6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    .line 629
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 630
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    .line 631
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 632
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    .line 633
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    .line 634
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->showPreview:Z

    .line 635
    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    .line 636
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    .line 637
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    .line 638
    return-void
.end method

.method static synthetic access$202(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    return p1
.end method

.method static synthetic access$302(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 465
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftXBase:I

    return v0
.end method


# virtual methods
.method public distFrom(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x4000

    .line 976
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 977
    .local v0, xDist:F
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v3, p2

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 978
    .local v1, yDist:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1122
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 1123
    .local v0, states:[I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x8

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1124
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_1

    .line 1125
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_0

    .line 1126
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 1139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1140
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1352
    :goto_1
    return-object v1

    .line 1128
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_3

    .line 1129
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_2

    .line 1130
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_0

    .line 1132
    :cond_2
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 1134
    :cond_3
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_4

    .line 1135
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 1137
    :cond_4
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 1142
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0xf

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 1143
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_7

    .line 1144
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_6

    .line 1145
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 1158
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1159
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1147
    :cond_7
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_9

    .line 1148
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_8

    .line 1149
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_2

    .line 1151
    :cond_8
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_2

    .line 1153
    :cond_9
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_a

    .line 1154
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_2

    .line 1156
    :cond_a
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_2

    .line 1161
    :cond_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0xc

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 1162
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_d

    .line 1163
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_c

    .line 1164
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1170
    :goto_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1171
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1166
    :cond_c
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_3

    .line 1168
    :cond_d
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_3

    .line 1174
    :cond_e
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x11

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    .line 1175
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_10

    .line 1176
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_f

    .line 1177
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1183
    :goto_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1184
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1179
    :cond_f
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_4

    .line 1181
    :cond_10
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_4

    .line 1188
    :cond_11
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitLeft:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitRight:Z

    if-eqz v1, :cond_16

    :cond_12
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 1189
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitLeft:Z

    if-eqz v1, :cond_14

    .line 1190
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_13

    .line 1191
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1203
    :goto_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1204
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1193
    :cond_13
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_5

    .line 1197
    :cond_14
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_15

    .line 1198
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_5

    .line 1200
    :cond_15
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_5

    .line 1208
    :cond_16
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x4

    if-ne v1, v2, :cond_19

    .line 1209
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_17

    .line 1210
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1214
    :goto_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCloseKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    .line 1215
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCloseKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1212
    :cond_17
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_6

    .line 1217
    :cond_18
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mFunctionKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1238
    :cond_19
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    .line 1239
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_1d

    .line 1240
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1c

    .line 1241
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 1256
    :cond_1a
    :goto_7
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x38

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCJModeKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_23

    .line 1257
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_1f

    .line 1258
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_1b

    .line 1259
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 1272
    :cond_1b
    :goto_8
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCJModeKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1273
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCJModeKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1243
    :cond_1c
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_7

    .line 1246
    :cond_1d
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1a

    .line 1247
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_7

    .line 1251
    :cond_1e
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1a

    .line 1252
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_7

    .line 1261
    :cond_1f
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_21

    .line 1262
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_20

    .line 1263
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_8

    .line 1265
    :cond_20
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_8

    .line 1267
    :cond_21
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_22

    .line 1268
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_8

    .line 1270
    :cond_22
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_8

    .line 1277
    :cond_23
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x37

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSymWidthKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    .line 1278
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_25

    .line 1279
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_24

    .line 1280
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 1293
    :cond_24
    :goto_9
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSymWidthKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1294
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSymWidthKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1282
    :cond_25
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_27

    .line 1283
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_26

    .line 1284
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_9

    .line 1286
    :cond_26
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_9

    .line 1288
    :cond_27
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_28

    .line 1289
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_9

    .line 1291
    :cond_28
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_9

    .line 1298
    :cond_29
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0xf2

    if-lt v1, v2, :cond_2f

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0xf5

    if-gt v1, v2, :cond_2f

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2f

    .line 1299
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_2b

    .line 1300
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2a

    .line 1301
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 1314
    :cond_2a
    :goto_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1315
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1303
    :cond_2b
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2d

    .line 1304
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_2c

    .line 1305
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_a

    .line 1307
    :cond_2c
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_a

    .line 1309
    :cond_2d
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_2e

    .line 1310
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_a

    .line 1312
    :cond_2e
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_a

    .line 1319
    :cond_2f
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x33

    if-eq v1, v2, :cond_30

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x3d

    if-eq v1, v2, :cond_30

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x34

    if-eq v1, v2, :cond_30

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x36

    if-eq v1, v2, :cond_30

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x35

    if-ne v1, v2, :cond_36

    :cond_30
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_36

    .line 1324
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-nez v1, :cond_32

    .line 1325
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_31

    .line 1326
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 1339
    :cond_31
    :goto_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1340
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1328
    :cond_32
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_34

    .line 1329
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_33

    .line 1330
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_b

    .line 1332
    :cond_33
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_b

    .line 1334
    :cond_34
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_35

    .line 1335
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_b

    .line 1337
    :cond_35
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_b

    .line 1344
    :cond_36
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSpecificKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_37

    .line 1345
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSpecificKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1347
    :cond_37
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-eqz v1, :cond_38

    .line 1348
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mFunctionKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1349
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mFunctionKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1351
    :cond_38
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommonKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1352
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommonKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1
.end method

.method public getCurrentIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1093
    const/4 v1, 0x0

    .line 1118
    :goto_0
    return-object v1

    .line 1094
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 1095
    .local v0, states:[I
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1

    .line 1097
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1098
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    packed-switch v1, :pswitch_data_0

    .line 1116
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1100
    :pswitch_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_OFF:[I

    .line 1101
    goto :goto_1

    .line 1103
    :pswitch_1
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_ON:[I

    .line 1104
    goto :goto_1

    .line 1106
    :pswitch_2
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_LOCK:[I

    goto :goto_1

    .line 1110
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_3

    .line 1111
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_1

    .line 1113
    :cond_3
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_1

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentIconPreview()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1048
    const/4 v1, 0x0

    .line 1073
    :goto_0
    return-object v1

    .line 1049
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 1050
    .local v0, states:[I
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1

    .line 1052
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1053
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    packed-switch v1, :pswitch_data_0

    .line 1071
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1055
    :pswitch_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_OFF:[I

    .line 1056
    goto :goto_1

    .line 1058
    :pswitch_1
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_ON:[I

    .line 1059
    goto :goto_1

    .line 1061
    :pswitch_2
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_SHIFT_LOCK:[I

    goto :goto_1

    .line 1065
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_3

    .line 1066
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_1

    .line 1068
    :cond_3
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_1

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentLongpressPreview()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1078
    const/4 v1, 0x0

    .line 1088
    :goto_0
    return-object v1

    .line 1079
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 1080
    .local v0, states:[I
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1

    .line 1081
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2

    .line 1082
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 1086
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1088
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1084
    :cond_2
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_1
.end method

.method public getMultiLineLabel()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v4, 0x0

    .line 1016
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 1017
    const/4 v2, 0x0

    .line 1042
    :cond_0
    :goto_0
    return-object v2

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getSingleLineLabel()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1021
    .local v0, Label:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 1022
    .local v3, toUpper:Z
    :goto_1
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    if-eqz v5, :cond_4

    .line 1023
    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLineLabelUpper:Ljava/lang/CharSequence;

    .line 1024
    .local v2, multiLineLabel:Ljava/lang/CharSequence;
    :goto_2
    if-nez v2, :cond_0

    .line 1025
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 1026
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1027
    .local v1, SpanText:Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1028
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1029
    invoke-static {}, Lcom/htc/android/htcime/ezsip/Keyboard;->access$000()Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1032
    invoke-static {}, Lcom/htc/android/htcime/ezsip/Keyboard;->access$100()Landroid/text/style/RelativeSizeSpan;

    move-result-object v5

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1034
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1036
    move-object v2, v1

    goto :goto_0

    .end local v1           #SpanText:Landroid/text/SpannableStringBuilder;
    .end local v2           #multiLineLabel:Ljava/lang/CharSequence;
    .end local v3           #toUpper:Z
    :cond_2
    move v3, v4

    .line 1021
    goto :goto_1

    .line 1023
    .restart local v3       #toUpper:Z
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLineLabelLower:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 1042
    goto :goto_0
.end method

.method public getSingleLineLabel()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0x3c2

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 982
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 983
    const/4 v0, 0x0

    .line 1012
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 987
    .local v2, toUpper:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, Label:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 989
    .local v1, lc:Ljava/util/Locale;
    if-eqz v2, :cond_4

    .line 991
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 992
    new-instance v1, Ljava/util/Locale;

    .end local v1           #lc:Ljava/util/Locale;
    const-string v5, "en"

    invoke-direct {v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 993
    .restart local v1       #lc:Ljava/util/Locale;
    :cond_2
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    .line 994
    const-string v5, "\u0131"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 996
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-lt v5, v8, :cond_7

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    const/16 v6, 0xdf

    if-ne v5, v6, :cond_7

    .line 1001
    const-string v5, "SS"

    const-string v6, "\u00df"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    if-ne v9, v3, :cond_8

    if-eqz v2, :cond_8

    .line 1008
    const-string v3, "\u03a3"

    const-string v4, "\u0385"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0           #Label:Ljava/lang/String;
    .end local v1           #lc:Ljava/util/Locale;
    .end local v2           #toUpper:Z
    :cond_6
    move v2, v4

    .line 985
    goto :goto_1

    .line 1003
    .restart local v0       #Label:Ljava/lang/String;
    .restart local v1       #lc:Ljava/util/Locale;
    .restart local v2       #toUpper:Z
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-lt v5, v7, :cond_5

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v8

    const/16 v6, 0x131

    if-ne v5, v6, :cond_5

    .line 1004
    const-string v5, "UII"

    const-string v6, "UI\u0130"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1009
    :cond_8
    const/4 v3, 0x4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v7

    if-ne v9, v3, :cond_0

    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public inside(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 942
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    if-lt p2, v2, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_2

    .line 944
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0xc

    if-ne v2, v3, :cond_0

    .line 945
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 946
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    .line 952
    :cond_0
    :goto_0
    return v0

    .line 948
    :cond_1
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 952
    goto :goto_0
.end method

.method public inside(IIZ)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "tracing"

    .prologue
    .line 963
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v0

    return v0
.end method

.method public insideWithEdgeCheck(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 908
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_6

    move v1, v4

    .line 909
    .local v1, leftEdge:Z
    :goto_0
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_7

    move v2, v4

    .line 910
    .local v2, rightEdge:Z
    :goto_1
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_8

    move v3, v4

    .line 911
    .local v3, topEdge:Z
    :goto_2
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_9

    move v0, v4

    .line 912
    .local v0, bottomEdge:Z
    :goto_3
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    if-lez v6, :cond_c

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_0

    if-eqz v1, :cond_c

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_c

    :cond_0
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_1

    if-eqz v2, :cond_c

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_c

    :cond_1
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    if-ge p2, v6, :cond_2

    if-eqz v3, :cond_c

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_c

    :cond_2
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_3

    if-eqz v0, :cond_c

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_c

    .line 916
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v6, v6, v5

    const/16 v7, -0xc

    if-ne v6, v7, :cond_4

    .line 917
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_a

    .line 918
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    .line 923
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v6, v6, v5

    const/16 v7, -0x11

    if-ne v6, v7, :cond_5

    .line 924
    iget v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_b

    .line 925
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    .line 931
    :cond_5
    :goto_5
    return v4

    .end local v0           #bottomEdge:Z
    .end local v1           #leftEdge:Z
    .end local v2           #rightEdge:Z
    .end local v3           #topEdge:Z
    :cond_6
    move v1, v5

    .line 908
    goto :goto_0

    .restart local v1       #leftEdge:Z
    :cond_7
    move v2, v5

    .line 909
    goto :goto_1

    .restart local v2       #rightEdge:Z
    :cond_8
    move v3, v5

    .line 910
    goto :goto_2

    .restart local v3       #topEdge:Z
    :cond_9
    move v0, v5

    .line 911
    goto :goto_3

    .line 920
    .restart local v0       #bottomEdge:Z
    :cond_a
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    goto :goto_4

    .line 927
    :cond_b
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    goto :goto_5

    :cond_c
    move v4, v5

    .line 931
    goto :goto_5
.end method

.method public insideY(I)Z
    .locals 2
    .parameter "y"

    .prologue
    .line 972
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidate()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    if-eqz v0, :cond_0

    .line 677
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 679
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    goto :goto_0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    .line 642
    return-void
.end method

.method public onReleased()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    .line 651
    return-void
.end method

.method protected parseCSV(Ljava/lang/String;)[I
    .locals 9
    .parameter "value"

    .prologue
    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, count:I
    const/4 v2, 0x0

    .line 881
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 882
    add-int/lit8 v0, v0, 0x1

    .line 883
    :goto_0
    const-string v6, ","

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    :cond_0
    new-array v5, v0, [I

    .line 888
    .local v5, values:[I
    const/4 v0, 0x0

    .line 889
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .local v4, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 892
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 895
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 893
    .end local v0           #count:I
    .restart local v1       #count:I
    :catch_0
    move-exception v3

    .line 894
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing keycodes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 895
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 897
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    return-object v5
.end method

.method public setAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 697
    const-string v3, "codes"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    invoke-virtual {p0, p3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const-string v3, "label"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 700
    iput-object p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 701
    :cond_2
    const-string v3, "topLabel"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 702
    iput-object p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    .line 703
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    goto :goto_0

    .line 704
    :cond_3
    const-string v3, "width"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 705
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, p3}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    goto :goto_0

    .line 706
    :cond_4
    const-string v3, "height"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 707
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, p3}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    goto :goto_0

    .line 708
    :cond_5
    const-string v3, "hgap"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 710
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    .line 711
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, p3}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    .line 712
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    goto :goto_0

    .line 714
    :cond_6
    const-string v3, "vgap"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 715
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, p3}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->vgap:I

    .line 716
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->vgap:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    goto :goto_0

    .line 717
    :cond_7
    const-string v3, "icon"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 722
    :cond_8
    const-string v3, "labelsource"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 725
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 726
    const-string v1, "@string/alternates_for_cp_12key_sym_punctuation"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 727
    const-string v1, "\u6807\u70b9"

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 728
    :cond_9
    const-string v1, "@string/alternates_for_cp_12key_sym_math"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 729
    const-string v1, "\u6570\u5b66"

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 731
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 736
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 740
    :cond_c
    const-string v3, "iconsource"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v1, "@drawable/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 746
    const-string v1, "@string/alternates_for_hwr_multiple_icon"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 747
    const-string p3, "key_icon_all_simplified"

    .line 755
    :cond_d
    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.android.htcime"

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 750
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 759
    .end local v0           #buf:Ljava/lang/StringBuffer;
    :cond_f
    const-string v3, "iconPreviewsource"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 760
    const/4 v0, 0x0

    .line 761
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v1, "@drawable/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 764
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 765
    const-string v1, "@string/alternates_for_hwr_multiple_previewicon"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 766
    const-string p3, "sapphire_icon_all_simplified"

    .line 774
    :cond_10
    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 778
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 769
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc.android.htcime"

    invoke-virtual {v3, p3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 781
    .end local v0           #buf:Ljava/lang/StringBuffer;
    :cond_12
    const-string v3, "iconPreview"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc.android.htcime"

    invoke-virtual {v3, p3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 785
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 787
    :cond_13
    const-string v3, "longpressPreview"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 788
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.htc.android.htcime"

    invoke-virtual {v3, p3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    .line 791
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 793
    :cond_14
    const-string v3, "showPreview"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 794
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->showPreview:Z

    goto/16 :goto_0

    .line 795
    :cond_15
    const-string v3, "sticky"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 796
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    goto/16 :goto_0

    .line 797
    :cond_16
    const-string v3, "function"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 798
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    goto/16 :goto_0

    .line 799
    :cond_17
    const-string v3, "textScale"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "%p"

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 801
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    goto/16 :goto_0

    .line 803
    :cond_18
    const-string v3, "splitSet"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 804
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    goto/16 :goto_0

    .line 805
    :cond_19
    const-string v3, "splitLeft"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 806
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitLeft:Z

    goto/16 :goto_0

    .line 807
    :cond_1a
    const-string v3, "splitRight"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 808
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitRight:Z

    goto/16 :goto_0

    .line 809
    :cond_1b
    const-string v3, "leftEdge"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 810
    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :goto_3
    or-int/2addr v1, v3

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    :cond_1c
    move v1, v2

    goto :goto_3

    .line 811
    :cond_1d
    const-string v1, "rightEdge"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 812
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x2

    :cond_1e
    or-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    .line 813
    :cond_1f
    const-string v1, "topEdge"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 814
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x4

    :cond_20
    or-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    .line 815
    :cond_21
    const-string v1, "bottomEdge"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 816
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v2, 0x8

    :cond_22
    or-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    .line 817
    :cond_23
    const-string v1, "modifier"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 818
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->modifier:Z

    goto/16 :goto_0

    .line 819
    :cond_24
    const-string v1, "repeatable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 820
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    goto/16 :goto_0

    .line 821
    :cond_25
    const-string v1, "popup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.htc.android.htcime"

    invoke-virtual {v1, p3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupResId:I

    goto/16 :goto_0

    .line 823
    :cond_26
    const-string v1, "popupCharacters"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 824
    const-string v1, "@string/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 825
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 830
    :cond_27
    iput-object p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 831
    :cond_28
    const-string v1, "popupDelay"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 833
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_S:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    goto/16 :goto_0

    .line 834
    :cond_29
    const-string v1, "text"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 835
    iput-object p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 836
    :cond_2a
    const-string v1, "accentType"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 837
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->accentType:I

    goto/16 :goto_0

    .line 838
    :cond_2b
    const-string v1, "alignIndex"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 839
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    goto/16 :goto_0

    .line 840
    :cond_2c
    const-string v1, "feedbackBG"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 841
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    goto/16 :goto_0

    .line 842
    :cond_2d
    const-string v1, "KeyBG"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 843
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSpecificKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 849
    :cond_2e
    const-string v1, "SplitLabel"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 850
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSplitLabel:Z

    goto/16 :goto_0

    .line 851
    :cond_2f
    const-string v1, "labelOffsetX"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 852
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    .line 853
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftXBase:I

    goto/16 :goto_0

    .line 854
    :cond_30
    const-string v1, "labelOffsetY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 855
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    goto/16 :goto_0

    .line 856
    :cond_31
    const-string v1, "iconOffsetY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 857
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconShiftY:I

    goto/16 :goto_0

    .line 858
    :cond_32
    const-string v1, "toplabelOffsetX"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 859
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftX:I

    goto/16 :goto_0

    .line 860
    :cond_33
    const-string v1, "toplabelOffsetY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 861
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftY:I

    goto/16 :goto_0

    .line 862
    :cond_34
    const-string v1, "grouped"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 863
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    goto/16 :goto_0

    .line 864
    :cond_35
    const-string v1, "enable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 865
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    goto/16 :goto_0

    .line 866
    :cond_36
    const-string v1, "xt9idx"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 867
    const-string v1, "@integer/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 868
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.htc.android.htcime"

    invoke-virtual {v2, p3, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto/16 :goto_0

    .line 872
    :cond_37
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto/16 :goto_0

    .line 873
    :cond_38
    const-string v1, "multichars"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    iput-object p3, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multichars:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    const/4 v0, 0x0

    .line 670
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    .line 671
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 672
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    .line 673
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .parameter "setStatus"

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    .line 664
    iput p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiState:I

    .line 665
    :cond_0
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 666
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    .line 667
    return-void
.end method

.method public setToggle(Z)V
    .locals 2
    .parameter "setOn"

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    .line 655
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    .line 656
    :cond_0
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 657
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    .line 658
    return-void
.end method

.method public setValidate(Z)V
    .locals 1
    .parameter "validate"

    .prologue
    .line 683
    if-eqz p1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->keyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    if-eqz v0, :cond_0

    .line 685
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 694
    :goto_0
    return-void

    .line 687
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    goto :goto_0

    .line 690
    :cond_1
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z

    .line 691
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z

    goto :goto_0
.end method
