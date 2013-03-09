.class public Lcom/google/android/marvin/talkback/SpeechCleanupUtils;
.super Ljava/lang/Object;
.source "SpeechCleanupUtils.java"


# static fields
.field private static final UNICODE_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 29
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    .line 32
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x26

    const v2, 0x7f0900de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c

    const v2, 0x7f0900df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3e

    const v2, 0x7f0900e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const v2, 0x7f0900e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x40

    const v2, 0x7f0900e2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5c

    const v2, 0x7f0900e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2022

    const v2, 0x7f0900e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    const v2, 0x7f0900e5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa2

    const v2, 0x7f0900e6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3a

    const v2, 0x7f0900e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2c

    const v2, 0x7f0900e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa9

    const v2, 0x7f0900e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7b

    const v2, 0x7f0900ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7d

    const v2, 0x7f0900eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb0

    const v2, 0x7f0900ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf7

    const v2, 0x7f0900ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x24

    const v2, 0x7f0900ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2026

    const v2, 0x7f0900ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2014

    const v2, 0x7f0900f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2013

    const v2, 0x7f0900f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20ac

    const v2, 0x7f0900f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x21

    const v2, 0x7f0900f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x60

    const v2, 0x7f0900f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2d

    const v2, 0x7f0900f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x201e

    const v2, 0x7f0900f6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd7

    const v2, 0x7f0900f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb6

    const v2, 0x7f0900f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    const v2, 0x7f0900f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const v2, 0x7f0900fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x25

    const v2, 0x7f0900fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2e

    const v2, 0x7f0900fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3c0

    const v2, 0x7f0900fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x23

    const v2, 0x7f0900fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa3

    const v2, 0x7f0900ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3f

    const v2, 0x7f090100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const v1, 0x7f090101

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xae

    const v2, 0x7f090102

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x3b

    const v2, 0x7f090103

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2f

    const v2, 0x7f090104

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const v2, 0x7f090106

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5b

    const v2, 0x7f090107

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5d

    const v2, 0x7f090108

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x221a

    const v2, 0x7f090109

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x2122

    const v2, 0x7f09010a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5f

    const v2, 0x7f09010b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7c

    const v2, 0x7f09010c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f09010d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUp(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 100
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 94
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->getCleanValueFor(Landroid/content/Context;C)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 97
    goto :goto_0
.end method

.method private static getCleanValueFor(Landroid/content/Context;C)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 107
    sget-object v1, Lcom/google/android/marvin/talkback/SpeechCleanupUtils;->UNICODE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 109
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 113
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const v1, 0x7f09004d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
