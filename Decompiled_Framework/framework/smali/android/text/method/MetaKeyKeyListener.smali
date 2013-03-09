.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;
    }
.end annotation


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011

.field private static mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$MetaSpan;

    invoke-direct {v0}, Landroid/text/NoCopySpan$MetaSpan;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$MetaSpan;

    invoke-direct {v0}, Landroid/text/NoCopySpan$MetaSpan;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-direct {v0, p0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;-><init>(Landroid/text/method/MetaKeyKeyListener;)V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    return-object v0
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 10

    const-wide v2, -0x1010100000102L

    const-wide v8, -0x2020200000203L

    const-wide v6, -0x4040400000405L

    const-wide/16 v4, 0x0

    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    and-long v0, p0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long p0, v0, v2

    :cond_0
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    and-long v0, p0, v8

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long p0, v0, v2

    :cond_1
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    and-long v0, p0, v6

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    :cond_2
    :goto_2
    return-wide p0

    :cond_3
    const-wide/high16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    and-long/2addr p0, v2

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    and-long/2addr p0, v8

    goto :goto_1

    :cond_5
    const-wide/high16 v0, 0x4

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    and-long/2addr p0, v6

    goto :goto_2
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    :cond_0
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_5

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4

    const/4 v2, 0x0

    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_1

    move p3, v2

    :cond_0
    :goto_0
    return p3

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v3, 0x4000011

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_2

    move p3, p2

    goto :goto_0

    :cond_2
    move p3, v2

    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    :cond_0
    :goto_0
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_1
    :goto_1
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x400

    :cond_2
    :goto_2
    return v0

    :cond_3
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2
.end method

.method public static final getMetaState(JI)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    const-wide/16 v3, 0x100

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v3, 0x200

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-wide/16 v3, 0x2

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    const-wide/16 v3, 0x400

    and-long/2addr v3, p0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5

    const/16 v4, 0x800

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 13

    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide/16 v5, 0x100

    const-wide v7, 0x10000000000L

    const-wide/high16 v9, 0x1

    const-wide v11, 0x100000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    :cond_1
    :goto_0
    return-wide p0

    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide/16 v5, 0x200

    const-wide v7, 0x20000000000L

    const-wide/high16 v9, 0x2

    const-wide v11, 0x200000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide/16 v5, 0x400

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4

    const-wide v11, 0x400000000L

    move-wide v0, p0

    invoke-static/range {v0 .. v12}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 12

    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide v5, 0x10000000000L

    const-wide/high16 v7, 0x1

    const-wide v9, 0x100000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    :cond_1
    :goto_0
    return-wide p0

    :cond_2
    const/16 v0, 0x39

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_4

    :cond_3
    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide v5, 0x20000000000L

    const-wide/high16 v7, 0x2

    const-wide v9, 0x200000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_1

    const/4 v2, 0x4

    const-wide v3, 0x4040400000404L

    const-wide v5, 0x40000000000L

    const-wide/high16 v7, 0x4

    const-wide v9, 0x400000000L

    move-wide v0, p0

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    goto :goto_0
.end method

.method private static hasHWKB()Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v2, :cond_0

    const/4 v2, 0x3

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static press(JIJJJJJ)J
    .locals 4

    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_0

    :cond_2
    and-long v0, p0, p11

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 6

    const v5, 0x4000011

    const v4, 0x1000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x2000011

    if-ne v0, v1, :cond_3

    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_4

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 6

    const v5, 0x4000011

    const v4, 0x1000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x2000011

    if-ne v0, v1, :cond_3

    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4

    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    :cond_0
    :goto_0
    return-wide p0

    :pswitch_0
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    :cond_1
    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v1, p1, p2}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->sendMetaKeyTimer(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHtcHardwareService;->setCapsLedState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHtcHardwareService;->setFnLedState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/text/method/MetaKeyKeyListener;->removeSpanAndLed(Landroid/text/Spannable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->setCapsFnLed(Ljava/lang/Object;Z)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->mHandler:Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;

    invoke-virtual {v0}, Landroid/text/method/MetaKeyKeyListener$MetaKeyDropbackHandler;->removeAllMessage()V

    :cond_0
    return-void
.end method

.method public static resetMetaStateWithoutLED(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private static setCapsFnLed(Ljava/lang/Object;Z)V
    .locals 2

    invoke-static {}, Landroid/text/method/MetaKeyKeyListener;->hasHWKB()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    invoke-interface {v0, p1}, Landroid/os/IHtcHardwareService;->setCapsLedState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    invoke-interface {v0, p1}, Landroid/os/IHtcHardwareService;->setFnLedState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 4

    const-wide/16 v2, 0x0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x1010100000102L

    and-long/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x2020200000203L

    and-long/2addr p1, v0

    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0

    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xe2

    if-ne p3, v1, :cond_0

    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetMetaStateWithoutLED(Landroid/text/Spannable;)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x3b

    if-eq p3, v1, :cond_1

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_2

    :cond_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_4

    :cond_3
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_5

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    :cond_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    :cond_2
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
