.class public Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$TextPos;,
        Landroid/media/TimedText$CharPos;,
        Landroid/media/TimedText$Text;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field public static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field public static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field public static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field public static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field public static final KEY_STRUCT_FONT_LIST:I = 0x9

.field public static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field public static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field public static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field public static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field public static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field public static final KEY_STRUCT_TEXT:I = 0x10

.field public static final KEY_STRUCT_TEXT_POS:I = 0xe

.field public static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPos:Landroid/media/TimedText$TextPos;

.field private mTextStruct:Landroid/media/TimedText$Text;

.field private mWrapText:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iget-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-direct {p0}, Landroid/media/TimedText;->parseParcel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private parseParcel()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/16 v5, 0x66

    if-ne v3, v5, :cond_3

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    new-instance v5, Landroid/media/TimedText$Text;

    invoke-direct {v5, p0}, Landroid/media/TimedText$Text;-><init>(Landroid/media/TimedText;)V

    iput-object v5, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    iget-object v5, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$Text;->textLen:I

    iget-object v5, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    iput-object v6, v5, Landroid/media/TimedText$Text;->text:[B

    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "TimedText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timed text key found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x65

    if-eq v3, v5, :cond_2

    const-string v5, "TimedText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timed text key found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v5, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Landroid/media/TimedText;->readStyle()V

    iget-object v2, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Landroid/media/TimedText;->readFont()V

    iget-object v2, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Landroid/media/TimedText;->readHighlight()V

    iget-object v2, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Landroid/media/TimedText;->readKaraoke()V

    iget-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    goto :goto_2

    :pswitch_5
    invoke-direct {p0}, Landroid/media/TimedText;->readHyperText()V

    iget-object v2, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    goto :goto_2

    :pswitch_6
    invoke-direct {p0}, Landroid/media/TimedText;->readBlinkingText()V

    iget-object v2, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    goto :goto_2

    :pswitch_7
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mWrapText:I

    iget v5, p0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :pswitch_8
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iget v5, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :pswitch_9
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iget v5, p0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :pswitch_a
    new-instance v5, Landroid/media/TimedText$Justification;

    invoke-direct {v5, p0}, Landroid/media/TimedText$Justification;-><init>(Landroid/media/TimedText;)V

    iput-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$Justification;->horizontalJustification:I

    iget-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$Justification;->verticalJustification:I

    iget-object v2, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    goto/16 :goto_2

    :pswitch_b
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iget v5, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_c
    new-instance v5, Landroid/media/TimedText$TextPos;

    invoke-direct {v5, p0}, Landroid/media/TimedText$TextPos;-><init>(Landroid/media/TimedText;)V

    iput-object v5, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v5, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$TextPos;->top:I

    iget-object v5, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$TextPos;->left:I

    iget-object v5, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$TextPos;->bottom:I

    iget-object v5, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Landroid/media/TimedText$TextPos;->right:I

    iget-object v2, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    goto/16 :goto_2

    :pswitch_d
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/media/TimedText;->mScrollDelay:I

    iget v5, p0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    :cond_6
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const/4 v4, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText()V
    .locals 2

    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, p0}, Landroid/media/TimedText$CharPos;-><init>(Landroid/media/TimedText;)V

    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->startChar:I

    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->endChar:I

    iget-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readFont()V
    .locals 7

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, p0}, Landroid/media/TimedText$Font;-><init>(Landroid/media/TimedText;)V

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Landroid/media/TimedText$Font;->ID:I

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, v1, Landroid/media/TimedText$Font;->name:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    :cond_0
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readHighlight()V
    .locals 2

    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, p0}, Landroid/media/TimedText$CharPos;-><init>(Landroid/media/TimedText;)V

    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->startChar:I

    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->endChar:I

    iget-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readHyperText()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/media/TimedText$HyperText;

    invoke-direct {v1, p0}, Landroid/media/TimedText$HyperText;-><init>(Landroid/media/TimedText;)V

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/media/TimedText$HyperText;->startChar:I

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/media/TimedText$HyperText;->endChar:I

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Landroid/media/TimedText$HyperText;->URL:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Landroid/media/TimedText$HyperText;->altString:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    :cond_0
    iget-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readKaraoke()V
    .locals 4

    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Landroid/media/TimedText$Karaoke;

    invoke-direct {v2, p0}, Landroid/media/TimedText$Karaoke;-><init>(Landroid/media/TimedText;)V

    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->startChar:I

    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->endChar:I

    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readStyle()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Landroid/media/TimedText$Style;

    invoke-direct {v3, p0}, Landroid/media/TimedText$Style;-><init>(Landroid/media/TimedText;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->startChar:I

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->endChar:I

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->fontID:I

    goto :goto_0

    :sswitch_3
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isBold:Z

    rem-int/lit8 v4, v1, 0x4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isItalic:Z

    div-int/lit8 v4, v1, 0x4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isUnderlined:Z

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :sswitch_4
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->fontSize:I

    goto :goto_0

    :sswitch_5
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->colorRGBA:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    :cond_4
    iget-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidKey(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x10

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
