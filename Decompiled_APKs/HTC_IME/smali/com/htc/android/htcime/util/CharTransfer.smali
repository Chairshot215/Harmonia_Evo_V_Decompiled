.class public Lcom/htc/android/htcime/util/CharTransfer;
.super Ljava/lang/Object;
.source "CharTransfer.java"


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x2

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field static final TAG:Ljava/lang/String; = "CharTransfer"

.field private static sCharMAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGreCharMAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransferable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x3a5

    const/16 v5, 0x399

    const/16 v4, 0x3c5

    const/16 v3, 0x3b9

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    .line 30
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ad

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3cb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3b0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3af

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x390

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3cc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ac

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ae

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ce

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x388

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x38e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3ab

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x38a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x3aa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x38c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x389

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    const/16 v1, 0x38f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sGreCharMAP:Ljava/util/HashMap;

    sput-object v0, Lcom/htc/android/htcime/util/CharTransfer;->sCharMAP:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcime/util/CharTransfer;->sTransferable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTransferable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 62
    sput-boolean p0, Lcom/htc/android/htcime/util/CharTransfer;->sTransferable:Z

    .line 63
    return-void
.end method

.method public static transfer(Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 7
    .parameter "src"

    .prologue
    .line 85
    sget-boolean v5, Lcom/htc/android/htcime/util/CharTransfer;->sTransferable:Z

    if-eqz v5, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    .line 104
    :cond_1
    return-object v0

    .line 88
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v0, dst:Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .line 91
    .local v2, isApply:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 92
    invoke-interface {p0, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    .line 93
    .local v4, org_ch:C
    sget-object v5, Lcom/htc/android/htcime/util/CharTransfer;->sCharMAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 95
    .local v3, new_ch:Ljava/lang/Character;
    if-eqz v3, :cond_3

    .line 97
    add-int/lit8 v5, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    const/4 v2, 0x1

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static transfer(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "src"

    .prologue
    .line 66
    sget-boolean v4, Lcom/htc/android/htcime/util/CharTransfer;->sTransferable:Z

    if-eqz v4, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    .line 81
    :cond_1
    return-object v0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, dst:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 72
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 73
    .local v3, org_ch:C
    sget-object v4, Lcom/htc/android/htcime/util/CharTransfer;->sCharMAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 75
    .local v2, new_ch:Ljava/lang/Character;
    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static transfer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 108
    sget-boolean v0, Lcom/htc/android/htcime/util/CharTransfer;->sTransferable:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 111
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
