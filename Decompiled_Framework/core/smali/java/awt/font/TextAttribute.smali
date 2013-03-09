.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final BACKGROUND:Ljava/awt/font/TextAttribute; = null

.field public static final BIDI_EMBEDDING:Ljava/awt/font/TextAttribute; = null

.field public static final CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute; = null

.field public static final FAMILY:Ljava/awt/font/TextAttribute; = null

.field public static final FONT:Ljava/awt/font/TextAttribute; = null

.field public static final FOREGROUND:Ljava/awt/font/TextAttribute; = null

.field public static final INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute; = null

.field public static final INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute; = null

.field public static final JUSTIFICATION:Ljava/awt/font/TextAttribute; = null

.field public static final JUSTIFICATION_FULL:Ljava/lang/Float; = null

.field public static final JUSTIFICATION_NONE:Ljava/lang/Float; = null

.field public static final KERNING:Ljava/awt/font/TextAttribute; = null

.field public static final KERNING_ON:Ljava/lang/Integer; = null

.field public static final LIGATURES:Ljava/awt/font/TextAttribute; = null

.field public static final LIGATURES_ON:Ljava/lang/Integer; = null

.field public static final NUMERIC_SHAPING:Ljava/awt/font/TextAttribute; = null

.field public static final POSTURE:Ljava/awt/font/TextAttribute; = null

.field public static final POSTURE_OBLIQUE:Ljava/lang/Float; = null

.field public static final POSTURE_REGULAR:Ljava/lang/Float; = null

.field public static final RUN_DIRECTION:Ljava/awt/font/TextAttribute; = null

.field public static final RUN_DIRECTION_LTR:Ljava/lang/Boolean; = null

.field public static final RUN_DIRECTION_RTL:Ljava/lang/Boolean; = null

.field public static final SIZE:Ljava/awt/font/TextAttribute; = null

.field public static final STRIKETHROUGH:Ljava/awt/font/TextAttribute; = null

.field public static final STRIKETHROUGH_ON:Ljava/lang/Boolean; = null

.field public static final SUPERSCRIPT:Ljava/awt/font/TextAttribute; = null

.field public static final SUPERSCRIPT_SUB:Ljava/lang/Integer; = null

.field public static final SUPERSCRIPT_SUPER:Ljava/lang/Integer; = null

.field public static final SWAP_COLORS:Ljava/awt/font/TextAttribute; = null

.field public static final SWAP_COLORS_ON:Ljava/lang/Boolean; = null

.field public static final TRACKING:Ljava/awt/font/TextAttribute; = null

.field public static final TRACKING_LOOSE:Ljava/lang/Float; = null

.field public static final TRACKING_TIGHT:Ljava/lang/Float; = null

.field public static final TRANSFORM:Ljava/awt/font/TextAttribute; = null

.field public static final UNDERLINE:Ljava/awt/font/TextAttribute; = null

.field public static final UNDERLINE_LOW_DASHED:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_DOTTED:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_GRAY:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer; = null

.field public static final UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer; = null

.field public static final UNDERLINE_ON:Ljava/lang/Integer; = null

.field public static final WEIGHT:Ljava/awt/font/TextAttribute; = null

.field public static final WEIGHT_BOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_DEMIBOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_DEMILIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_EXTRABOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_EXTRA_LIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_HEAVY:Ljava/lang/Float; = null

.field public static final WEIGHT_LIGHT:Ljava/lang/Float; = null

.field public static final WEIGHT_MEDIUM:Ljava/lang/Float; = null

.field public static final WEIGHT_REGULAR:Ljava/lang/Float; = null

.field public static final WEIGHT_SEMIBOLD:Ljava/lang/Float; = null

.field public static final WEIGHT_ULTRABOLD:Ljava/lang/Float; = null

.field public static final WIDTH:Ljava/awt/font/TextAttribute; = null

.field public static final WIDTH_CONDENSED:Ljava/lang/Float; = null

.field public static final WIDTH_EXTENDED:Ljava/lang/Float; = null

.field public static final WIDTH_REGULAR:Ljava/lang/Float; = null

.field public static final WIDTH_SEMI_CONDENSED:Ljava/lang/Float; = null

.field public static final WIDTH_SEMI_EXTENDED:Ljava/lang/Float; = null

.field private static final serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/high16 v6, 0x3f60

    const/high16 v5, 0x3f40

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "background"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "bidi_embedding"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "char_replacement"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "family"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "font"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "foreground"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method highlight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "input method underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "justification"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "kerning"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "ligatures"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "numeric_shaping"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "posture"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "run_direction"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "strikethrough"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "superscript"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "swap_colors"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "tracking"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    const v0, 0x3d23d70a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    const v0, -0x42dc28f6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "transform"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "weight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fe0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4010

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4020

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x4030

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string v1, "width"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v5}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v6}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fa0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    return-void
.end method
